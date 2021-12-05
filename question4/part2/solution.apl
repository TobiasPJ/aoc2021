tables ← (∊(⍴input)(⍴⊃input)(⍴⊃⊃input)) ⍴ ∊input
replace_num ← {⍵×1+¯2×⍵=⍺}
check_bingo ← {∨/(∧/⍵<0)∨(∧⌿⍵<0)}
add_all_unmarked ← {+/+⌿⍵×⍵>0}
