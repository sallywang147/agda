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

module MAlonzo.Code.Naturals where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

-- Naturals.ℕ
d_ℕ_2 = ()
data T_ℕ_2 = C_zero_4 | C_suc_6 T_ℕ_2
-- Naturals.plus
d_plus_8 :: T_ℕ_2 -> T_ℕ_2 -> T_ℕ_2
d_plus_8 v0 v1
  = case coe v1 of
      C_zero_4 -> coe v0
      C_suc_6 v2 -> coe C_suc_6 (coe d_plus_8 (coe v0) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Naturals.Leq
d_Leq_16 a0 a1 = ()
data T_Leq_16
  = C_leq'45'zn'45'evidence_20 | C_leq'45'ss'45'evidence_26 T_Leq_16
