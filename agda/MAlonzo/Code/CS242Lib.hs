{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.CS242Lib where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

-- CS242Lib.Eq
d_Eq_6 a0 a1 a2 = ()
data T_Eq_6 = C_refl_12
-- CS242Lib.sym
d_sym_20 :: () -> AgdaAny -> AgdaAny -> T_Eq_6 -> T_Eq_6
d_sym_20 = erased
-- CS242Lib.trans
d_trans_30 ::
  () -> AgdaAny -> AgdaAny -> AgdaAny -> T_Eq_6 -> T_Eq_6 -> T_Eq_6
d_trans_30 = erased
-- CS242Lib.cong
d_cong_42 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T_Eq_6 -> T_Eq_6
d_cong_42 = erased
-- CS242Lib.Prod
d_Prod_50 a0 a1 = ()
data T_Prod_50 = C_prod_64 AgdaAny AgdaAny
-- CS242Lib.Prod.proj₁
d_proj'8321'_60 :: T_Prod_50 -> AgdaAny
d_proj'8321'_60 v0
  = case coe v0 of
      C_prod_64 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- CS242Lib.Prod.proj₂
d_proj'8322'_62 :: T_Prod_50 -> AgdaAny
d_proj'8322'_62 v0
  = case coe v0 of
      C_prod_64 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- CS242Lib.Sum
d_Sum_70 a0 a1 = ()
data T_Sum_70 = C_inj'8321'_76 AgdaAny | C_inj'8322'_78 AgdaAny
-- CS242Lib.match
d_match_86 ::
  () ->
  () ->
  () ->
  T_Sum_70 -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny
d_match_86 ~v0 ~v1 ~v2 v3 v4 v5 = du_match_86 v3 v4 v5
du_match_86 ::
  T_Sum_70 -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny
du_match_86 v0 v1 v2
  = case coe v0 of
      C_inj'8321'_76 v3 -> coe v1 v3
      C_inj'8322'_78 v3 -> coe v2 v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- CS242Lib.swap
d_swap_104 :: () -> () -> T_Sum_70 -> T_Sum_70
d_swap_104 ~v0 ~v1 v2 = du_swap_104 v2
du_swap_104 :: T_Sum_70 -> T_Sum_70
du_swap_104 v0
  = case coe v0 of
      C_inj'8321'_76 v1 -> coe C_inj'8322'_78 (coe v1)
      C_inj'8322'_78 v1 -> coe C_inj'8321'_76 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- CS242Lib.⊥
d_'8869'_110 = ()
data T_'8869'_110
-- CS242Lib.⊥-elim
d_'8869''45'elim_114 :: () -> T_'8869'_110 -> AgdaAny
d_'8869''45'elim_114 ~v0 ~v1 = du_'8869''45'elim_114
du_'8869''45'elim_114 :: AgdaAny
du_'8869''45'elim_114 = MAlonzo.RTE.mazUnreachableError
-- CS242Lib.not
d_not_116 :: () -> ()
d_not_116 = erased
-- CS242Lib.Dec
d_Dec_122 a0 = ()
data T_Dec_122 = C_yes_126 AgdaAny | C_no_128
-- CS242Lib.Σ
d_Σ_134 a0 a1 = ()
data T_Σ_134 = C_some_148 AgdaAny AgdaAny
-- CS242Lib.Σ.Σ-proj₁
d_Σ'45'proj'8321'_144 :: T_Σ_134 -> AgdaAny
d_Σ'45'proj'8321'_144 v0
  = case coe v0 of
      C_some_148 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- CS242Lib.Σ.Σ-proj₂
d_Σ'45'proj'8322'_146 :: T_Σ_134 -> AgdaAny
d_Σ'45'proj'8322'_146 v0
  = case coe v0 of
      C_some_148 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
