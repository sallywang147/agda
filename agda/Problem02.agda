open import CS242Lib
open import Naturals

leq-refl : (n : ℕ) → Leq n n
leq-refl n = {!!}

leq-suc : {n m : ℕ} → Leq n m → Leq n (suc m)
leq-suc p = {!!}

leq-plus : (n m k : ℕ) → Leq n m → Leq n (plus m k)
leq-plus n m k p = {!!}

leq-cong : (n m k : ℕ) → Leq n m → Leq (plus n k) (plus m k)
leq-cong n m k p = {!!}
