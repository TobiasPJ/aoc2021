day ← {input ← ⍵-1 ⋄ pos_zeros ← ¯1⍷input ⋄ new_state ← input+7×pos_zeros ⋄ (+/pos_zeros)=0: new_state ⋄ new_state ,(+/pos_zeros) ⍴ 8 }
solve ← {⍺=0: ≢⍵ ⋄ (⍺-1) ∇  day ⍵}
80 solve init_state