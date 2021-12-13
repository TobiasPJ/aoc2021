input ← input + 1
get_columns ← {⌈/{⊣/∊⍵} ¨⍵}
get_rows ← {⌈/{⊢/∊⍵} ¨⍵}
get_paper ← {((get_rows ⍵) (get_columns ⍵)) ⍴ 0}
get_spotted_paper ← {(⍴⍺) ⍴ (⍸⍺=0) ∊ ⌽¨⍵}
fold ← {(⍺↑⍵)∨⊖(-⍺)↑⍵}
solve ← {'x'=⊃⊃⍵: (⍉((2⊃⊃⍵) fold ⍉⍺)) ∇ 1↓⍵ ⋄ 'y'=⊃⊃⍵: ((2⊃⊃⍵) fold ⍺) ∇ 1↓⍵ ⋄ ⍺}
