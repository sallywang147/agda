--------------------------
-- DO NOT MODIFY THIS FILE
--------------------------

open import CS242Lib

-- The natural numbers
data ℕ : Set where
  zero : ℕ
  suc  : ℕ → ℕ

-- Addition of naturals
plus : ℕ → ℕ → ℕ
plus n zero = n
plus n (suc m) = suc (plus n m)

-- Ordering of naturals
data Leq : ℕ → ℕ → Set where
  leq-zn-evidence : {n : ℕ} → Leq zero n
  leq-ss-evidence : {n m : ℕ} → Leq n m → Leq (suc n) (suc m)
