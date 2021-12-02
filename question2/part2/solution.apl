ins ← input[⍸(2|⍳⍴input)=1]
steps ← input[⍸(2|⍳⍴input)=0]
delta_d ← (steps×-(⊂'up')⍷ins) + (steps×(⊂'down')⍷ins)
forwards ← (steps×(⊂'forward')⍷ins)
(+/(forwards×+\delta_d))×+/forwards
