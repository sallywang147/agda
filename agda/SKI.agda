--------------------------
-- DO NOT MODIFY THIS FILE
--------------------------

infixl 7 _·_

-- The definition of terms in the SKI combinator calculus
data Term : Set where
  S : Term
  K : Term
  I : Term
  -- We define the application constructor as a left-associative infix operator.
  -- This means that:
  -- (S · e₁ · e₂ · e₃) ≡ ((S · e₁) · e₂) · e₃ ≡ _·_ (_·_ (_·_ S e₁) e₂) e₃
  --
  -- Elsewhere in the homework, we avoid defining infix operators, but we make
  -- an exception here because the alternative is too cumbersome.
  _·_ : Term → Term → Term

-- The reduction rules for SKI terms. 'Reduces' implements the '—→' relation
-- from lecture.
data Reduces : Term → Term → Set where
  βS : {e₁ e₂ e₃ : Term}
    → Reduces (S · e₁ · e₂ · e₃) (e₁ · e₃ · (e₂ · e₃))
  βK : {e₁ e₂ : Term}
    → Reduces (K · e₁ · e₂) e₁
  βI : {e₁ : Term}
    → Reduces (I · e₁) e₁
  ξ₁ : {e₁ e₁' e₂ : Term}
    → Reduces e₁ e₁'
    → Reduces (e₁ · e₂) (e₁' · e₂)
  ξ₂ : {e₁ e₂ e₂' : Term}
    → Reduces e₂ e₂'
    → Reduces (e₁ · e₂) (e₁ · e₂')

-- The reflexive, transitive closure of the reduction relation. 'Reduces*'
-- implements the '—→*' relation from lecture.
data Reduces* : Term → Term → Set where
  done : ∀ {e}
    → Reduces* e e
  step : ∀ {e₁ e₂ e₃}
    → Reduces e₁ e₂
    → Reduces* e₂ e₃
    → Reduces* e₁ e₃

-- An alternative, "parallel" reduction relation for SKI terms, which we will
-- use in our proof of confluence. 'ParReduces' implements the '>>' relation
-- from lecture. There are a couple ways to formalize this relation. For
-- instance, one could add a 'par-ξ₁' and 'par-ξ₂' rule instead of the
-- 'par-refl' rule. Though perhaps less intuitive, our approach will make it
-- easier to state the lemma we need.
data ParReduces : Term → Term → Set where
  par-βS : {e₁ e₂ e₃ : Term}
    → ParReduces (S · e₁ · e₂ · e₃) (e₁ · e₃ · (e₂ · e₃))
  par-βK : {e₁ e₂ : Term}
    → ParReduces (K · e₁ · e₂) e₁
  par-βI : {e₁ : Term}
    → ParReduces (I · e₁) e₁
  par-ξ : {e₁ e₁' e₂ e₂' : Term}
    → ParReduces e₁ e₁'
    → ParReduces e₂ e₂'
    → ParReduces (e₁ · e₂) (e₁' · e₂')
  par-refl : {e₁ : Term}
    → ParReduces e₁ e₁

-- The transitive closure of '>>' (which is already reflexive). 'ParReduces*'
-- implemnts the '>>*' relation from lecture.
data ParReduces* : Term → Term → Set where
  par-done : ∀ {e}
    → ParReduces* e e
  par-step : ∀ {e₁ e₂ e₃}
    → ParReduces e₁ e₂
    → ParReduces* e₂ e₃
    → ParReduces* e₁ e₃
