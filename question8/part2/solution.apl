get_num ← {∧/⍵∊'cagedb': 0 ⋄ ∧/⍵∊'ab': 1 ⋄ ∧/⍵∊'gcdfa': 2 ⋄ ∧/⍵∊'fbcad': 3 ⋄ ∧/⍵∊'eafb': 4 ⋄ ∧/⍵∊'cdfbe': 5 ⋄ ∧/⍵∊'cdfgeb': 6 ⋄ ∧/⍵∊'dab': 7 ⋄ ∧/⍵∊'acedgfb': 8 ⋄ ∧/⍵∊'cefabd': 9}
get_numbers ← {get_num¨¨ ⍵}
