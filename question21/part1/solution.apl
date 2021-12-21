⎕IO ← 0
rolls ← 1+100|⍳1200
rounds ← +/ ((≢rolls)÷3) 3 ⍴ rolls
(2|∘⍳∘≢⊢)rounds
((≢rounds)÷2) 2  ⍴ rounds
 +⍀ 4 8⍪((≢rounds)÷2) 2  ⍴ 10|rounds