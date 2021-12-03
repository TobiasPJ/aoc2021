input ←  ⍪input
amount_1 ← +⌿input
lenght ← 1⌷⍴input
amount_0 ← lenght - amount_1
gamma_bin ← amount_0 < amount_1
gamma ← 2⊥gamma_bin
epsilon_bin ← amount_0>amount_1
epsilon ← 2⊥epsilon_bin
gamma×epsilon
