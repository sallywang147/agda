open import CS242Lib
open import SKI

SKII-to-I : Reduces* (S · K · I · I) I
SKII-to-I = {!!}

SII-to-SII : Reduces* ((S · I · I) · (S · I · I)) ((S · I · I) · (S · I · I))
SII-to-SII = {!!}

-- Do not delete this, give a nontrival proof that SII reduces to SII
SII-to-SII-nontrivial : not (Eq SII-to-SII done)
SII-to-SII-nontrivial = λ ()
