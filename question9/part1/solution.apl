get_map ← {(≢⍵) (≢⊃⍵) ⍴ ∊⍵}
get_adjacent ← {({⊂⍵}⌺3 3) ⍵}
replace_zeros ← {(⍵+11×⍵=0)}
setup ← {(replace_zeros¨get_adjacent 1+⍵)-1}
check_adjacent ← {∧/(2 2⌷⍵)<(1 2⌷⍵) (2 1⌷⍵) (2 3⌷⍵) (3 2⌷⍵)}
solve ← {map ← get_map ⍵ ⋄ +/1+{⍵⌷map}¨ ⍸check_adjacent¨ setup map}
