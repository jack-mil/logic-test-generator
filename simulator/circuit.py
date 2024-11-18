from __future__ import annotations

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from typing import Iterable, Self

    from .structs import NetId

from pathlib import Path

from .structs import Gate, GateType


class NetlistFormatError(Exception):
    """Raised when circuit net-list is malformed or invalid"""


def try_as_int(value: NetId):
    """Backwards compatibility from when net id's where always Int"""
    try:
        return int(value)
    except ValueError:
        return value


class Circuit:
    """
    A Circuit is a stateless definition of the logic gates and input/output nets
    associated with a particular combinational logic circuit.

    - The Circuit object does not hold any simulation state of nodes.
    - The Circuit is initialized from a net-list file in a particular format using `load_file()`"
    - This class can easily be extended to support other net-list formats
    """

    def __init__(self):
        """
        Initialize a Circuit with default (empty) configuration.
          Use `Circuit.load_from_file(Path)` to initialize a specific net-list.
        """

        self.inputs: list[NetId] = list()
        """List of in-order circuit input net ids"""

        self.outputs: list[NetId] = list()
        """List of in-order circuit output net ids"""

        self.gates: set[Gate] = set()
        """Set of all logic Gates in this circuit"""

        self.gate_output_nets: set[NetId] = set()
        """Set of all nets which are gate outputs"""

        self.nets: set[NetId] = set()
        """Set of all net id's (nodes) in this circuit"""

    @classmethod
    def load_file(cls, netlist_file: Path | str) -> Self:
        """
        ### Factory Method ###
        Initialize and return a Circuit by reading from a net-list file.

        The file must have the format:
        ```
          # One or more lines of Gate definitions
          GATE_TYPE [1|2 input nets] [1 output net]
          INV 9 5
          NAND 16 17 14
          # The last two lines are special INPUT and OUTPUT net definitions
          INPUT  1 2 3 4 6 8 10 -1 # <- -1 end deliminator (REQUIRED)
          OUTPUT  7 9 11 5 -1
        ```

        - Raises OSError if the file does not exist.
        - Raises NetlistFormatError if the net-list is malformed
        """
        if not isinstance(netlist_file, Path):
            netlist_file = Path(netlist_file)

        if not netlist_file.exists():
            raise OSError(f'Net-list file "{netlist_file}" could not be found')

        with netlist_file.open() as f:
            # pre-filter blank lines
            lines = [line.rstrip() for line in f if line]

        return cls.load_strings(lines)

    @classmethod
    def load_strings(cls, netlist: list[str]) -> Self:
        """
        ### Factory Method ###
        Initialize and return a Circuit from the list of net & gate definitions

        Each element should match the format from a file.
        - Raises NetlistFormatError if the net-list is malformed
        """
        circuit = cls()

        for i, line in enumerate(netlist):  # process gate or I/O definition
            keyword, *nets = line.split()  # split on whitespace
            nets = list(map(try_as_int, nets))  # use int or str as net ids
            try:
                if keyword in GateType:
                    # the last net id in the line is the gate output net
                    *in_ids, out_id = nets
                    circuit.add_gate(GateType(keyword), output=out_id, inputs=tuple(in_ids))
                elif keyword == 'INPUT':
                    *in_ids, end = nets  # discard end delimiter (-1)
                    if str(end) != '-1':
                        raise NetlistFormatError('INPUT must be terminated with "-1"')
                    circuit.add_inputs(in_ids)
                elif keyword == 'OUTPUT':
                    *out_ids, end = nets  # discard end delimiter (-1)
                    if str(end) != '-1':
                        raise NetlistFormatError('OUTPUT must be terminated with "-1"')
                    circuit.add_outputs(out_ids)
                else:
                    raise NetlistFormatError(f'Error in net-list: Unknown gate type "{keyword}"')

            except NetlistFormatError as e:
                e.add_note(f'line {i+1} : "{line}" <-- Occurred here')
                raise

        return circuit

    def add_gate(self, type: GateType, inputs: tuple[NetId, ...], output: NetId):
        """
        Add a logic gate with given output and input nets. Records new id's in the set of all nets.

        Raises NetlistFormatError if the output has already been driven by a previous gate.
        """
        if self.is_gate_output(output):
            # Line already driven by another gate (invalid topology)
            raise NetlistFormatError(
                f'Invalid topology: Gate {type} output {output} already driven by another gate.'
            )
        # save a separate set of known gate outputs
        self.gate_output_nets.add(output)
        # add each net id we encounter to the set. Some may repeat, that's ok
        self.nets.add(output)
        self.nets.update(inputs)
        # Create a new gate and add it to internal set
        try:
            self.gates.add(Gate(type, output=output, inputs=inputs))
        except TypeError as e:
            raise NetlistFormatError("Error adding gate: Invalid Gate definition.") from e

    def add_inputs(self, net_ids: Iterable[NetId]):
        """
        Assign one or more existing net_ids as primary inputs.

        Raises NetlistFormatError if the nets haven't been defined as gate inputs.
        """
        missing_keys = set(net_ids).difference(self.nets)
        if missing_keys:
            raise NetlistFormatError(
                f'Undefined input net(s) encountered. Nets: "{missing_keys}" not found in net-list.'
            )
        conflicts = self.gate_output_nets.intersection(net_ids)
        if conflicts:
            raise NetlistFormatError(
                f'Invalid input net(s): Primary inputs {conflicts} conflict with existing gate outputs.'
            )
        self.inputs.extend(net_ids)

    def add_outputs(self, net_ids: Iterable[NetId]):
        """Assign one or more existing net_ids as primary outputs."""
        missing_keys = set(net_ids).difference(self.nets)
        if missing_keys:
            raise NetlistFormatError(
                f'Undefined output net(s) encountered. Nets: "{missing_keys}" not found in net-list.'
            )
        self.outputs.extend(net_ids)

    def is_gate_output(self, net_id: NetId) -> bool:
        """
        Returns true if the given net id is driven by a gate.
        (i.e., not a primary input)
        """
        return net_id in self.gate_output_nets

    def net_count(self) -> int:
        """Total number of nets (nodes) in this circuit"""
        return len(self.nets)

    def input_count(self) -> int:
        """Number of input nets (nodes) in this circuit"""
        return len(self.inputs)

    def output_count(self) -> int:
        """Number of output nets (nodes) in this circuit"""
        return len(self.outputs)
