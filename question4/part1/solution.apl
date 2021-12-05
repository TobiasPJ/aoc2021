tables ← (∊(⍴input)(⍴⊃input)(⍴⊃⊃input)) ⍴ ∊input
replace_num ← {⍵×1+¯2×⍵=⍺}
check_bingo ← {∨/(∧/⍵<0)∨(∧⌿⍵<0)}
add_all_unmarked ← {+/+⌿⍵×⍵>0}
check_all_tables ← {⍺>⍴input: 0 ⋄ (check_bingo ⍺⌷⍵): ⍺ ⋄ (⍺+1) ∇ ⍵}
execute_draws ← {num ← 1 check_all_tables ⍵ ⋄ num>0: ⍺,add_all_unmarked num⌷⍵ ⋄ (1↓⍺) ∇ ((1↑⍺) replace_num ⍵)}
solve ← {res ← ⍺ execute_draws ⍵ ⋄ sum ← ¯1↑res ⋄ arr ← ¯1↓res ⋄ sum×((⍴⍺)-(⍴arr))⌷⍺}
