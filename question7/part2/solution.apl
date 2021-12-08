calc_singe_cost ← {(⍵×⍵+1)÷2} 
calc_cost ← {+/+/calc_singe_cost¨|init_pos-⍵}
solve ← {⌊/calc_cost¨ get_possible_pos ⍵}