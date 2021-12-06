tables ← (∊(⍴input)(⍴⊃input)(⍴⊃⊃input)) ⍴ ∊input
replace_num ← {⍺=0: ⍵+¯1×⍵=⍺ ⋄ ⍺≠0: ⍵×1+¯2×⍵=⍺}
check_bingo ← {∨/(∧/⍵<0)∨(∧⌿⍵<0)}
add_all_unmarked ← {+/+⌿⍵×⍵>0}
check_all_tables ← {(⊃⍺)>≢⍵: 2⌷⍺ ⋄ (check_bingo (⊃⍺)⌷⍵): (1+⊃⍺) ((2⌷⍺),⊃⍺) ∇ ⍵ ⋄ (1+⊃⍺) (2⌷⍺) ∇ ⍵}
get_latest_bingo ← {⍸(~⍺∊⍵)=1}
execute_draws ← {bingos ← ∊1 ⍬ check_all_tables ⍵ ⋄ (⍴bingos)=≢⍵: (3⌷⍺)×(add_all_unmarked (bingos get_latest_bingo ∊2⌷⍺)⌷⍵) ⋄ (1↓⊃⍺) bingos (1↑⊃⍺) ∇ ((1↑⊃⍺) replace_num ⍵)}
solve ← {⍺ ⍬ 0 execute_draws ⍵}
draws solve tables
