i ← input
j ← 1⌽i ⍝left shifts the input by one
l ← j-i ⍝applies element by element subtraction
k ← l ≥ 1 ⍝checks which element are positive meaning that the value has increased
+⌿k∘.=1 ⍝count all the all the ones in k

⍝This can also be done in a single line
+⌿(((1↓i)-(¯1↓i)) ≥ 1)∘.=1