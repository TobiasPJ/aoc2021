get_string ← {∊{({1 1 0/⍵}¨ ¯1↓⍵),¯1↑⍵}{val ← (combinations∊⊆⍵)/value ⋄ (1⊃⍵),val,2⊃⍵}¨({⊂⍵}⌺2)⍵}
solve ← {⍺=0: {(⌈/⍵)-⌊/⍵}∊{⍴⍵}⌸⍵ ⋄ (⍺-1) ∇ get_string ⍵}
