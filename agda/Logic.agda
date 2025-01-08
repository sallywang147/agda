--------------------------
-- DO NOT MODIFY THIS FILE
--------------------------

open import CS242Lib

-- Double negation elimination
not-not-elim : Set₁
not-not-elim = (P : Set) → not (not P) → P

-- The law of excluded middle
em : Set₁
em = (P : Set) → Sum P (not P)

-- Peirce's law
peirce : Set₁
peirce = (P Q : Set) → ((P → Q) → P) → P

implies-as-or : Set₁
implies-as-or = (P Q : Set) → (P → Q) → Sum (not P) Q
