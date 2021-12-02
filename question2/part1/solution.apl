ins ← input[⍸(2|⍳⍴input)=1] 
steps ← input[⍸(2|⍳⍴input)=0]
forward ← +/steps[⍸((⊂'forward')⍷ins)=1]
down ← +/steps[⍸((⊂'down')⍷ins)=1]
up ← +/steps[⍸((⊂'up')⍷ins)=1]
forward×(down - up)