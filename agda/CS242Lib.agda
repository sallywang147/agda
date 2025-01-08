--------------------------
-- DO NOT MODIFY THIS FILE
--------------------------

-------------------------
-- Propositional equality
-------------------------

data Eq {A : Set} (x : A) : A → Set where
  refl : Eq x x

sym : {A : Set} {x y : A}
  -> Eq x y
  -> Eq y x
sym refl = refl

trans : {A : Set} {x y z : A}
  -> Eq x y
  -> Eq y z
  -> Eq x z
trans refl refl = refl

cong : {A B : Set} (f : A -> B) {x y : A}
  -> Eq x y
  -> Eq (f x) (f y)
cong f refl = refl

----------------------
-- Logical connectives
----------------------

-- A ∧ B
record Prod (A B : Set) : Set where
  constructor prod
  field
    proj₁ : A
    proj₂ : B

-- So we can write `proj₁` and `proj₂` instead of `Prod.proj₁` and `Prod.proj₂`
open Prod public

-- A ∨ B
data Sum (A B : Set) : Set where
  inj₁ : A -> Sum A B
  inj₂ : B -> Sum A B

match : {A B C : Set} -> Sum A B -> (A -> C) -> (B -> C) -> C
match (inj₁ x) f g = f x
match (inj₂ y) f g = g y

swap : {A B : Set} -> Sum A B -> Sum B A
swap (inj₁ x) = inj₂ x
swap (inj₂ y) = inj₁ y

-- False
data ⊥ : Set where
  -- No constructors

-- Ex falso quodlibet (from falsehood, anything)
⊥-elim : {A : Set} -> ⊥ -> A
⊥-elim ()

not : Set -> Set
not A = A -> ⊥

data Dec (A : Set) : Set where
  yes :     A -> Dec A
  no  : not A -> Dec A

---------------
-- Existentials
---------------

-- Just a dependent version of `Prod`
record Σ (A : Set) (B : A -> Set) : Set where
  constructor some
  field
    Σ-proj₁ : A
    Σ-proj₂ : B Σ-proj₁

-- So we can write `Σ-proj₁` and `Σ-proj₂` instead of `Σ.Σ-proj₁` and `Σ.Σ-proj₂`
open Σ public
