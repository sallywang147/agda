open import CS242Lib
open import Logic

deMorgan : {P Q : Set} → not (Sum P Q) → Prod (not P) (not Q)
deMorgan x = {!!}

not-not-not-elim : {P : Set} → not (not (not P)) → not P
not-not-not-elim f x = {!!}

emIrrefutable : {P : Set} → not (not (Sum P (not P)))
emIrrefutable x = {!!}
