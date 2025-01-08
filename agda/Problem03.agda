open import CS242Lib
open import Naturals

leq? : (n m : ℕ) → Dec (Leq n m)
leq? zero _ = yes leq-zn-evidence
leq? (suc n) zero = no (\p -> ⊥-elim p)
leq? (suc n) (suc m) with leq? n m
... | yes p = yes (leq-ss-evidence p)
... | no np = no (\p -> np (leq-ss-evidence p))
