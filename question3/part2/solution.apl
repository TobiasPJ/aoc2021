input ←  ⍪input
amount_1 ← +⌿input
lenght ← 1⌷⍴input
amount_0 ← lenght - amount_1
most_common ←  ⊃amount_1 ≥  amount_0
(x⌷⊃y⌷input)=x⌷most_common ⍝checks if row column is equal to the most common in pos y
:If (x⌷⊃y⌷input)=x⌷most_common  ⋄ ⊃y⌷input ⋄ :EndIf ⍝Returns the whole row if the bit at pos xy is the most common one

⍝Notes
1⌷⊃1⌷input ⍝takes the first bit of the first row
extract_row ← {x ← 1⌷⍺ ⋄ y ← 2⌷⍺ ⋄ (:If (x⌷⊃y⌷(2⌷⍵))=x⌷(1⌷⍵)  ⋄ ⊃y⌷(2⌷⍵) ⋄ :EndIf)} ⍝ does not work
check ← {((1⌷⍺)⌷⊃(2⌷⍺)⌷⊃2⌷⍵)=(1⌷⍺)⌷⊃1⌷⍵} ⍝ x y check most_common input   checks if xy is most commion in input