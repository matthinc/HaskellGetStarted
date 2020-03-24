 {-# LANGUAGE ScopedTypeVariables #-}

module LibSpec (spec) where

import Lib (square, ggT)
import Test.Hspec
import Test.QuickCheck

check :: Integer -> Integer -> Bool
check a b = a >= 0 && b >= 0

spec :: Spec
spec = do
  describe "square" $ do
    it "calculates the square of 5.3" $
      square 5.3 `shouldBe` 28.09

  describe "ggT" $ do
    it "calculates the ggT of 35 and 55" $
      ggT 35 55 `shouldBe` 5

    it "calculates the same as Haskell gcd" $
      property $ \a b -> (check a b) ==> ggT a b == gcd a b
