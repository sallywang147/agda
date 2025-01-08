open import CS242Lib
open import Naturals

plus-ident-l : (n : ℕ) → Eq (plus zero n) n
plus-ident-l zero = refl
plus-ident-l (suc n) = cong suc (plus-ident-l n)

suc-suc : (n m : ℕ) → Eq (plus (suc n) m) (suc (plus n m))
suc-suc n zero = refl
suc-suc zero m = refl
suc-suc n (suc m) = cong suc (suc-suc n m)

plus-comm : (n m : ℕ) → Eq (plus n m) (plus m n)
plus-comm zero m = plus-ident-l m
plus-comm (suc n) m =
  cong suc (plus-comm n m)
