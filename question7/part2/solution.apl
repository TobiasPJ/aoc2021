calc_singel_cost ← {(⍵×⍵+1)÷2} 
calc_singel_cost ← {+/⍳⍵} ⍝ a different way thats probably much slower
calc_cost ← {+/+/calc_singe_cost¨|init_pos-⍵}
solve ← {⌊/calc_cost¨ get_possible_pos ⍵}