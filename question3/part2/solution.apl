input ←  ⍪input
amount_1 ← +⌿input
lenght ← 1⌷⍴input
amount_0 ← lenght - amount_1
most_common ← ⊃amount_1 >  amount_0
(y⌷⊃x⌷input)=y⌷most_common ⍝checks if row column is equal to the most common in pos y


⍝Notes
1⌷⊃1⌷input ⍝takes the first bit of the first row