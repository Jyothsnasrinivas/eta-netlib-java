module Netlib.ARPACK where

import Java
import Java.Array

data {-# CLASS "com.github.fommil.netlib.ARPACK" #-} ARPACK = ARPACK (Object# ARPACK)
  deriving Class

data {-# CLASS "org.netlib.util.intW" #-} IntW = IntW (Object# IntW)
  deriving Class

data {-# CLASS "org.netlib.util.doubleW" #-} DoubleW = DoubleW (Object# DoubleW)
  deriving Class

foreign import java unsafe dgetv0 :: IntW -> String -> Int
                                  -> Bool -> Int -> Int -> JDoubleArray -> Int
                                  -> JDoubleArray -> DoubleW -> JIntArray
                                  -> JDoubleArray -> IntW
                                  -> Java ARPACK ()

foreign import java unsafe "dgetv0" dgetv01 :: IntW -> String -> Int
                                  -> Bool -> Int -> Int -> JDoubleArray -> Int
                                  -> Int -> JDoubleArray -> Int
                                  -> DoubleW -> JIntArray -> Int
                                  -> JDoubleArray -> Int -> IntW
                                  -> Java ARPACK ()

foreign import java unsafe dlaqrb :: Bool -> Int -> Int -> Int
                                  -> JDoubleArray -> Int -> JDoubleArray
                                  -> JDoubleArray -> JDoubleArray -> IntW
                                  -> Java ARPACK ()

foreign import java unsafe "dlaqrb" dlaqrb2 :: Bool -> Int -> Int -> Int
                                            -> JDoubleArray -> Int -> Int
                                            -> JDoubleArray -> Int
                                            -> JDoubleArray -> Int
                                            -> JDoubleArray -> Int -> IntW
                                            -> Java ARPACK ()

foreign import java unsafe dmout :: Int -> Int -> JDoubleArray
                                 -> Int -> Int -> String
                                 -> Java ARPACK ()

foreign import java unsafe "dmout" dmout2 :: Int -> Int -> JDoubleArray
                                           -> Int -> Int -> Int -> String
                                           -> Java ARPACK ()

foreign import java unsafe dnaitr :: IntW -> String -> Int -> Int
                                  -> Int -> Int -> JDoubleArray
                                  -> DoubleW -> JDoubleArray -> Int
                                  -> JDoubleArray -> Int -> JIntArray
                                  -> JDoubleArray -> IntW
                                  -> Java ARPACK ()

foreign import java unsafe "dnaitr" dnaitr2 :: IntW -> String -> Int -> Int
                                            -> Int -> Int -> JDoubleArray
                                            -> Int -> DoubleW -> JDoubleArray
                                            -> Int -> Int -> JDoubleArray
                                            -> Int -> Int -> JIntArray
                                            -> Int -> JDoubleArray -> Int -> IntW
                                            -> Java ARPACK ()
