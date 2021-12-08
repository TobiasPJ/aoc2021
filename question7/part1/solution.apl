calc_cost ← {+/+/|init_pos-⍵}
get_possible_pos ← {⍳⌈/⍵}
solve ← {⌊/calc_cost¨ get_possible_pos ⍵} ⍝ solution
solve ← {costs ← calc_cost¨ get_possible_pos ⍵ ⋄ min_fuel ← ⌊/costs ⋄ ⍸min_fuel⍷costs} ⍝ get the position