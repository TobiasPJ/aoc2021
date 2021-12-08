get_output ← {(~2|(⍳≢⍵))/⍵}    
get_string_lengths ← {∊≢¨¨⍵}
solve ← {+/(get_string_lengths ⍺) ∊ ⍵}
output solve 2 4 3 7