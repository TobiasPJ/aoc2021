input ← input + 1
get_columns ← {⌈/{⊣/∊⍵} ¨⍵}
get_rows ← {⌈/{⊢/∊⍵} ¨⍵}
get_paper ← {((get_rows ⍵) (get_columns ⍵)) ⍴ 0}
get_spotted_paper ← {(⍴⍺) ⍴ (⍸⍺=0) ∊ ⌽¨⍵}
fold_vertical ← {(⍺↑⍵)∨⊖(-⍺)↑⍵}
solve ← {+/+⌿⍺ fold_vertical ⍵}
655 solve ⍉spotted_paper
