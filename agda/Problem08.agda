open import SKI
open import Problem07

reduce-imp-par : {e₁ e₂ : Term}
  → Reduces e₁ e₂
  → ParReduces e₁ e₂
reduce-imp-par p = {!!}

reduces*-imp-par* : {e₁ e₂ : Term}
  → Reduces* e₁ e₂
  → ParReduces* e₁ e₂
reduces*-imp-par* p = {!!}

-- Note that e₁ >> e₂ DOES NOT imply e₁ —→ e₂. After all, >> is allowed to perform
-- multiple reductions as long as they are in independent subtrees.
par-imp-reduces* : ∀ {e₁ e₂}
  → ParReduces e₁ e₂
  → Reduces* e₁ e₂
par-imp-reduces* p = {!!}

par*-imp-reduces* : ∀ {e₁ e₂}
  → ParReduces* e₁ e₂
  → Reduces* e₁ e₂
par*-imp-reduces* p = {!!}
