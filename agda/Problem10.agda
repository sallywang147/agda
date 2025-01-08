open import CS242Lib
open import SKI
open import Problem08
open import Problem09

strip : {e e₁ e₂ : Term}
  → ParReduces e e₁
  → ParReduces* e e₂
  → Σ Term (λ e' → (Prod (ParReduces* e₁ e') (ParReduces e₂ e')))
strip x y = {!!}

par-confluence : {e e₁ e₂ : Term}
  → ParReduces* e e₁
  → ParReduces* e e₂
  → Σ Term (λ e' → (Prod (ParReduces* e₁ e') (ParReduces* e₂ e')))
par-confluence x y = {!!}

confluence : {e e₁ e₂ : Term}
  → Reduces* e e₁
  → Reduces* e e₂
  → Σ Term (λ e' → (Prod (Reduces* e₁ e') (Reduces* e₂ e')))
confluence x y = {!!}
