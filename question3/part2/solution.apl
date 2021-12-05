calc_most_common ← {⊃(+⌿⍵)≥(⊃⍴⍵)-(+⌿⍵)}
calc_least_common ← {⊃(+⌿⍵)≤(⊃⍴⍵)-(+⌿⍵)}
check ← {((1⌷⍺)⌷⊃(2⌷⍺)⌷⊃2⌷⍵)=(1⌷⍺)⌷⊃1⌷⍵} ⍝ x y check most_common input   checks if xy is most commion in input
get_row ← {(⍺ check ⍵)=0:⊃(2⌷⍺)⌷⊃2⌷⍵ ⋄ (⍺ check ⍵)=1:0} ⍝ gets row if if the bit is not the most common one
row ← {⍺ get_row (calc_most_common ⍵) ⍵} || row ← {⍺ get_row (calc_least_common ⍵) ⍵}
drop_row ← {(⊃⍴⍵)<2⌷⍺:⍵ ⋄ (⊃⍴⍵)≥2⌷⍺:(~∊((⊂⍺ row ⍵)⍷⍵))⌿⍵} ⍝ removes the row from w if row return a row and not 0
:For i :In ⍳⊃⍴inp ⋄ inp ← 5 i drop_row inp ⋄ :EndFor ⍝ checks all in one row and

⍝Notes
1⌷⊃1⌷input ⍝takes the first bit of the first row
(x⌷⊃y⌷input)=x⌷most_common ⍝checks if row column is equal to the most common in pos y
input ←  ⍪input
amount_1 ← +⌿input
lenght ← 1⌷⍴input
amount_0 ← lenght - amount_1
most_common ←  ⊃amount_1 ≥  amount_0

⍝ actual solution
inp←(∊((⊃⍴⍪input)(⍴⊃⍪input)))⍴∊input ⍝ creates matrix from input
calc_most_common ← {(+⌿⍵)≥(⊃⍴⍵)-(+⌿⍵)}
calc_least_common ← {(+⌿⍵)<(⊃⍴⍵)-(+⌿⍵)}
get_rows_1 ← {(⍵[;⍺]=⍺⌷calc_most_common ⍵)⌿⍵} ⍝ get rows based on most common
get_rows_2 ← {(⍵[;⍺]=⍺⌷calc_least_common ⍵)⌿⍵}
solve_1 ← {(⊃⍴⍵)=1:⍵ ⋄ (⍺+1) ∇ (⍺ get_rows_1 ⍵)}
solve_2 ← {(⊃⍴⍵)=1:⍵ ⋄ (⍺+1) ∇ (⍺ get_rows_2 ⍵)}
2⊥(1 solve_1 inp) × 2⊥(1 solve_2 inp)
