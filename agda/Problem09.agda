open import CS242Lib
open import SKI

diamond : {e e₁ e₂ : Term}
  → ParReduces e e₁
  → ParReduces e e₂
  → Σ Term (λ e' → Prod (ParReduces e₁ e') (ParReduces e₂ e'))
diamond p q = {!!}
