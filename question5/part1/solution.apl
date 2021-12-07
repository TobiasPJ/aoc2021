ins ← 1+(∊(⍴input)(⍴⊃input)(⍴⊃⊃input)) ⍴ ∊input
create_start_map ← {max ← ⌈/⌈/⍵ ⋄ max max ⍴ 0}
start_map ← create_start_map ins
create_index ← {(~(⍳⍵)∊⍳⍺-1)/⍳⍵}
draw_horizontal ← {(∊⍴⍵) ⍴ (⍸⍵≥0)∊⌽¨((⊃⍺),¨2⊃⍺)} ⍝ will draw a "line" through column
draw_vertical ← {(∊⍴⍵) ⍴ (⍸⍵≥0)∊((⊃⍺),¨2⊃⍺)}
vertical_index ← {((2⌷⍺)⌊2⌷⍵) create_index (2⌷⍺)⌈2⌷⍵}
horizontal_index ← {((1⌷⍺)⌊1⌷⍵) create_index (1⌷⍺)⌈1⌷⍵}
call_draw_vertical ← {(⍺[1 2] vertical_index ⍺[3 4]) (⍺[1]) draw_vertical ⍵}
call_draw_horizontal ← {(⍺[1 2] horizontal_index ⍺[3 4]) (⍺[2]) draw_horizontal ⍵}
get_final ← {(≢⍵)=0: ⍺ ⋄ c_ins ← ∊1↑⍵ ⋄ f ← c_ins[1 2] ⋄ s ← c_ins[3 4] ⋄ 1⌷f=s: (⍺+(c_ins call_draw_vertical ⍺)) ∇ (1↓⍵) ⋄ 2⌷f=s: (⍺+(c_ins call_draw_horizontal ⍺)) ∇ (1↓⍵) ⋄ ⍺ ∇ 1↓⍵}
solve ← {final_state ← ⍺ get_final ⍵ ⋄ max ←  ⌈/⌈/ final_state ⋄ +/+⌿max⍷final_state}
