open import SKI

·e-cong : {e₁ e₁' e₂ : Term}
  → Reduces* e₁ e₁'
  → Reduces* (e₁ · e₂) (e₁' · e₂)
·e-cong p = {!!}

e·-cong : {e₁ e₂ e₂' : Term}
  → Reduces* e₂ e₂'
  → Reduces* (e₁ · e₂) (e₁ · e₂')
e·-cong p = {!!}

reduces*-trans : {e₁ e₂ e₃ : Term}
  → Reduces* e₁ e₂
  → Reduces* e₂ e₃
  → Reduces* e₁ e₃
reduces*-trans p q = {!!}
