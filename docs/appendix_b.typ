#set table(fill: (x, y) => if calc.odd(x + y) {
  rgb("EAF2F5")
})

#pagebreak()
= Appendix B: Deductive Fault Simulator Results

#block(
  breakable: false,
  [=== Circuit: s27
    - Input Vector: `1 1 0 1 1 0 1`
    - Detected Faults: 9],
)
#figure(
  caption: [s27 (`1101101`)],
  table(
    columns: 9,
    [1 s-a-0], [3 s-a-1], [5 s-a-0], [7 s-a-0], [9 s-a-1], [11 s-a-0], [12 s-a-0], [13 s-a-0], [15 s-a-1],
  ),
)

=== Circuit: s27
- Input Vector: `0 1 0 1 0 0 1`
- Detected Faults: 13
#figure(
  caption: [s27 (`0101001`)],
  table(
    columns: 9,
    [1 s-a-1], [3 s-a-1], [5 s-a-0], [7 s-a-1], [8 s-a-1], [9 s-a-1], [11 s-a-0], [12 s-a-1], [14 s-a-0],
    [15 s-a-1], [16 s-a-1], [19 s-a-1], [20 s-a-1],
  ),
)

#block(
  breakable: false,
  [ === Circuit: s298f_2
    - Input Vector: `1 0 1 0 1 0 1 1 1 1 0 0 1 0 1 0 1`
    - Detected Faults: 87 ],
)

#figure(
  caption: [s298f_2 (`10101011110010101`)],
  table(
    columns: 8,
    [3 s-a-0], [5 s-a-0], [6 s-a-1], [7 s-a-0], [8 s-a-0], [9 s-a-0], [10 s-a-0], [11 s-a-1],
    [12 s-a-1], [15 s-a-0], [18 s-a-1], [19 s-a-1], [20 s-a-1], [21 s-a-1], [22 s-a-1], [23 s-a-1],
    [24 s-a-0], [25 s-a-0], [26 s-a-0], [27 s-a-0], [28 s-a-1], [29 s-a-1], [30 s-a-1], [31 s-a-1],
    [32 s-a-0], [33 s-a-1], [34 s-a-0], [35 s-a-0], [36 s-a-1], [37 s-a-0], [39 s-a-1], [41 s-a-1],
    [45 s-a-1], [48 s-a-0], [49 s-a-0], [50 s-a-0], [51 s-a-0], [52 s-a-1], [53 s-a-1], [54 s-a-1],
    [55 s-a-1], [56 s-a-0], [58 s-a-0], [64 s-a-1], [66 s-a-0], [67 s-a-1], [68 s-a-1], [95 s-a-0],
    [102 s-a-0], [103 s-a-0], [104 s-a-0], [107 s-a-1], [108 s-a-1], [109 s-a-1], [110 s-a-1], [111 s-a-1],
    [113 s-a-1], [115 s-a-1], [116 s-a-1], [118 s-a-0], [119 s-a-0], [121 s-a-0], [122 s-a-0], [132 s-a-0],
    [133 s-a-0], [135 s-a-0], [138 s-a-0], [143 s-a-1], [144 s-a-1], [145 s-a-1], [149 s-a-0], [152 s-a-0],
    [158 s-a-0], [159 s-a-0], [161 s-a-0], [163 s-a-0], [166 s-a-1], [167 s-a-1], [168 s-a-1], [169 s-a-1],
    [170 s-a-1], [173 s-a-0], [182 s-a-1], [183 s-a-1], [186 s-a-1], [187 s-a-1], [188 s-a-1],
  ),
)

#block(
  breakable: false,
  [=== Circuit: s298f_2
    - Input Vector: `1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1`
    - Detected Faults: 53],
)

#figure(
  caption: [s298f_2 (`11101110101110111`)],
  table(
    columns: 9,
    [1 s-a-0], [6 s-a-0], [7 s-a-0], [8 s-a-1], [9 s-a-0], [10 s-a-1], [11 s-a-0], [12 s-a-0], [15 s-a-0],
    [18 s-a-1], [19 s-a-1], [20 s-a-1], [21 s-a-1], [22 s-a-1], [23 s-a-1], [24 s-a-1], [25 s-a-1], [26 s-a-1],
    [27 s-a-1], [28 s-a-1], [29 s-a-1], [30 s-a-1], [31 s-a-1], [32 s-a-0], [33 s-a-0], [34 s-a-0], [35 s-a-1],
    [36 s-a-0], [37 s-a-1], [43 s-a-0], [45 s-a-1], [47 s-a-1], [49 s-a-1], [51 s-a-1], [53 s-a-0], [55 s-a-0],
    [57 s-a-0], [59 s-a-0], [63 s-a-1], [64 s-a-0], [65 s-a-1], [66 s-a-1], [67 s-a-1], [68 s-a-1], [102 s-a-1],
    [152 s-a-1], [166 s-a-0], [168 s-a-0], [170 s-a-0], [172 s-a-0], [173 s-a-0], [174 s-a-0], [182 s-a-0],
  ),
)

#block(
  breakable: false,
  [=== Circuit: s344f_2
    - Input Vector: `1 0 1 0 1 0 1 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 1`
    - Detected Faults: 82],
)

#figure(
  caption: [s344f_2 (`101010101010111101111111`)],
  table(
    columns: 9,
    [1 s-a-0], [2 s-a-1], [3 s-a-0], [4 s-a-1], [5 s-a-0], [6 s-a-1], [7 s-a-0], [8 s-a-1], [9 s-a-0],
    [10 s-a-1], [11 s-a-0], [12 s-a-1], [13 s-a-0], [14 s-a-0], [15 s-a-0], [16 s-a-0], [25 s-a-1], [26 s-a-1],
    [27 s-a-1], [28 s-a-0], [29 s-a-0], [30 s-a-0], [31 s-a-0], [32 s-a-1], [33 s-a-0], [34 s-a-1], [35 s-a-0],
    [36 s-a-1], [37 s-a-0], [38 s-a-0], [39 s-a-0], [40 s-a-1], [41 s-a-0], [42 s-a-1], [43 s-a-0], [44 s-a-1],
    [45 s-a-0], [46 s-a-1], [47 s-a-0], [48 s-a-0], [49 s-a-1], [50 s-a-0], [54 s-a-1], [60 s-a-0], [61 s-a-1],
    [62 s-a-1], [64 s-a-0], [65 s-a-1], [66 s-a-1], [67 s-a-0], [68 s-a-1], [69 s-a-1], [70 s-a-1], [71 s-a-1],
    [72 s-a-1], [73 s-a-1], [76 s-a-1], [77 s-a-1], [78 s-a-1], [91 s-a-0], [92 s-a-1], [95 s-a-1], [96 s-a-1],
    [97 s-a-0], [99 s-a-0], [101 s-a-0], [105 s-a-1], [106 s-a-0], [108 s-a-0], [109 s-a-1], [110 s-a-1], [111 s-a-1],
    [112 s-a-0], [114 s-a-0], [115 s-a-1], [116 s-a-1], [144 s-a-0], [145 s-a-0], [146 s-a-0], [188 s-a-1], [189 s-a-1],
    [190 s-a-1],
  ),
)

#block(
  breakable: false,
  [=== Circuit: s344f_2
    - Input Vector: `1 1 1 0 1 0 1 1 1 0 1 0 1 0 1 0 1 0 0 0 1 1 0 0`
    - Detected Faults: 132],
)

#figure(
  caption: [s344f_2 (`111010111010101010001100`)],
  table(
    columns: 9,
    [1 s-a-0], [2 s-a-0], [3 s-a-0], [4 s-a-1], [5 s-a-0], [6 s-a-1], [7 s-a-0], [8 s-a-0], [9 s-a-0],
    [10 s-a-1], [11 s-a-0], [12 s-a-1], [13 s-a-0], [14 s-a-1], [15 s-a-0], [16 s-a-1], [25 s-a-1], [26 s-a-1],
    [27 s-a-1], [28 s-a-0], [29 s-a-1], [30 s-a-0], [31 s-a-1], [32 s-a-0], [33 s-a-0], [34 s-a-0], [35 s-a-1],
    [36 s-a-1], [37 s-a-0], [38 s-a-1], [39 s-a-0], [40 s-a-1], [41 s-a-0], [42 s-a-1], [43 s-a-0], [44 s-a-1],
    [45 s-a-0], [46 s-a-1], [47 s-a-1], [48 s-a-1], [49 s-a-0], [50 s-a-1], [51 s-a-0], [52 s-a-0], [53 s-a-1],
    [55 s-a-0], [56 s-a-1], [57 s-a-0], [58 s-a-1], [59 s-a-1], [60 s-a-1], [61 s-a-1], [62 s-a-1], [63 s-a-1],
    [64 s-a-1], [65 s-a-0], [67 s-a-0], [68 s-a-1], [69 s-a-0], [70 s-a-1], [71 s-a-0], [72 s-a-0], [73 s-a-1],
    [76 s-a-0], [78 s-a-0], [79 s-a-0], [80 s-a-0], [82 s-a-0], [85 s-a-0], [86 s-a-0], [88 s-a-0], [91 s-a-1],
    [92 s-a-0], [93 s-a-0], [94 s-a-0], [95 s-a-1], [96 s-a-1], [97 s-a-0], [99 s-a-1], [100 s-a-1], [101 s-a-0],
    [103 s-a-0], [104 s-a-1], [117 s-a-0], [118 s-a-1], [119 s-a-1], [120 s-a-1], [122 s-a-0], [123 s-a-0], [124 s-a-1],
    [125 s-a-1], [126 s-a-0], [127 s-a-1], [128 s-a-1], [130 s-a-0], [131 s-a-0], [132 s-a-1], [133 s-a-1], [134 s-a-1],
    [136 s-a-0], [137 s-a-1], [138 s-a-1], [139 s-a-1], [140 s-a-1], [142 s-a-0], [144 s-a-0], [146 s-a-0], [147 s-a-1],
    [148 s-a-1], [149 s-a-0], [153 s-a-1], [154 s-a-1], [155 s-a-0], [156 s-a-0], [162 s-a-1], [163 s-a-1], [164 s-a-1],
    [165 s-a-0], [169 s-a-1], [170 s-a-0], [171 s-a-0], [173 s-a-1], [174 s-a-1], [175 s-a-0], [179 s-a-0], [181 s-a-1],
    [182 s-a-1], [183 s-a-1], [184 s-a-1], [186 s-a-1], [188 s-a-0], [189 s-a-0],
  ),
)

#block(
  breakable: false,
  [=== Circuit: s349f_2
    - Input Vector: `1 0 1 0 0 0 0 0 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1`
    - Detected Faults: 97],
)

#figure(
  caption: [s349f_2 (`101000000010101011111111`)],
  table(
    columns: 9,
    [1 s-a-0], [2 s-a-1], [3 s-a-0], [4 s-a-1], [5 s-a-1], [6 s-a-1], [7 s-a-1], [8 s-a-1], [9 s-a-1],
    [10 s-a-1], [11 s-a-0], [12 s-a-1], [13 s-a-0], [14 s-a-1], [15 s-a-0], [16 s-a-1], [25 s-a-0], [26 s-a-1],
    [27 s-a-0], [28 s-a-1], [29 s-a-1], [30 s-a-1], [31 s-a-1], [32 s-a-1], [33 s-a-1], [34 s-a-1], [35 s-a-0],
    [36 s-a-1], [37 s-a-0], [38 s-a-1], [39 s-a-0], [40 s-a-1], [41 s-a-0], [42 s-a-0], [43 s-a-1], [44 s-a-0],
    [45 s-a-0], [46 s-a-0], [47 s-a-0], [48 s-a-0], [49 s-a-0], [50 s-a-0], [51 s-a-1], [52 s-a-0], [53 s-a-1],
    [54 s-a-1], [55 s-a-1], [56 s-a-1], [57 s-a-1], [58 s-a-0], [60 s-a-0], [62 s-a-0], [64 s-a-1], [65 s-a-1],
    [66 s-a-0], [67 s-a-1], [68 s-a-0], [69 s-a-1], [70 s-a-1], [71 s-a-1], [72 s-a-1], [73 s-a-1], [74 s-a-1],
    [109 s-a-0], [111 s-a-0], [113 s-a-0], [115 s-a-0], [116 s-a-1], [118 s-a-1], [120 s-a-0], [121 s-a-1], [123 s-a-0],
    [124 s-a-1], [126 s-a-0], [127 s-a-0], [128 s-a-1], [129 s-a-1], [130 s-a-1], [131 s-a-1], [133 s-a-0], [134 s-a-1],
    [135 s-a-1], [137 s-a-0], [138 s-a-1], [171 s-a-0], [173 s-a-0], [174 s-a-1], [176 s-a-0], [177 s-a-1], [178 s-a-1],
    [179 s-a-0], [180 s-a-0], [181 s-a-0], [183 s-a-0], [187 s-a-1], [188 s-a-1], [189 s-a-1],
  ),
)

#block(
  breakable: false,
  [=== Circuit: s349f_2
    - Input Vector: `1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 0 0 0 1 1 1 1`
    - Detected Faults: 137],
)

#figure(
  caption: [s349f_2 (`111111101010101010001111`)],
  table(
    columns: 9,
    [1 s-a-0], [2 s-a-0], [3 s-a-0], [4 s-a-0], [5 s-a-0], [6 s-a-0], [7 s-a-0], [8 s-a-1], [9 s-a-0],
    [10 s-a-1], [11 s-a-0], [12 s-a-1], [13 s-a-0], [14 s-a-1], [15 s-a-0], [25 s-a-1], [26 s-a-1], [27 s-a-1],
    [28 s-a-0], [29 s-a-0], [30 s-a-0], [31 s-a-0], [32 s-a-0], [33 s-a-1], [34 s-a-0], [35 s-a-1], [36 s-a-1],
    [37 s-a-0], [38 s-a-1], [39 s-a-0], [40 s-a-0], [41 s-a-1], [42 s-a-1], [43 s-a-1], [44 s-a-0], [45 s-a-1],
    [46 s-a-0], [47 s-a-1], [48 s-a-1], [49 s-a-1], [50 s-a-1], [51 s-a-0], [52 s-a-0], [53 s-a-0], [54 s-a-0],
    [55 s-a-0], [56 s-a-0], [57 s-a-0], [58 s-a-1], [59 s-a-1], [61 s-a-0], [62 s-a-1], [63 s-a-1], [65 s-a-0],
    [66 s-a-0], [67 s-a-1], [68 s-a-0], [69 s-a-1], [70 s-a-0], [71 s-a-0], [72 s-a-0], [74 s-a-0], [75 s-a-0],
    [76 s-a-1], [77 s-a-1], [78 s-a-0], [79 s-a-1], [80 s-a-1], [81 s-a-0], [82 s-a-1], [83 s-a-1], [84 s-a-0],
    [85 s-a-1], [86 s-a-1], [87 s-a-0], [88 s-a-1], [89 s-a-1], [90 s-a-0], [91 s-a-1], [92 s-a-1], [93 s-a-0],
    [94 s-a-0], [95 s-a-0], [96 s-a-1], [97 s-a-0], [99 s-a-0], [102 s-a-0], [103 s-a-0], [105 s-a-0], [108 s-a-1],
    [109 s-a-1], [110 s-a-1], [111 s-a-1], [112 s-a-1], [113 s-a-1], [114 s-a-1], [115 s-a-1], [116 s-a-0], [117 s-a-0],
    [130 s-a-1], [131 s-a-1], [133 s-a-0], [134 s-a-1], [135 s-a-1], [137 s-a-0], [138 s-a-1], [143 s-a-1], [144 s-a-1],
    [145 s-a-1], [150 s-a-1], [151 s-a-1], [152 s-a-1], [157 s-a-1], [158 s-a-1], [159 s-a-1], [162 s-a-1], [163 s-a-1],
    [164 s-a-1], [165 s-a-1], [166 s-a-1], [167 s-a-0], [168 s-a-1], [169 s-a-0], [171 s-a-0], [173 s-a-0], [174 s-a-0],
    [175 s-a-0], [177 s-a-0], [180 s-a-1], [181 s-a-1], [182 s-a-1], [183 s-a-1], [184 s-a-1], [185 s-a-1], [186 s-a-1],
    [187 s-a-0], [188 s-a-0],
  ),
)