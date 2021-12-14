combinations ← 'CH' 'HH' 'CB' 'NH' 'HB' 'HC' 'HN' 'NN' 'BH' 'NC' 'NB' 'BN' 'BB' 'BC' 'CC' 'CN' 
value ← 'B' 'N' 'H' 'C' 'C' 'B' 'C' 'C' 'H' 'B' 'B' 'B' 'N' 'B' 'N' 'C' 
start ←  'NNCB' 
get_string ← {∊{({1 1 0/⍵}¨ ¯1↓⍵),¯1↑⍵}{val ← (combinations∊⊆⍵)/value ⋄ (1⊃⍵),val,2⊃⍵}¨({⊂⍵}⌺2)⍵}
solve ← {⍺=0: ⌊/∘⌈/{⍴⍵}⌸⍵ ⋄ (⍺-1) ∇ get_string ⍵}