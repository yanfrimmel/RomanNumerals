module Converter.ConverterSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import Converter.Converter

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "converts integer to roman numeral" $ do
    it "I" $ do
      convert 1 `shouldBe` "I"
    it "III" $ do
      convert 3 `shouldBe` "III"
    it "IV" $ do
      convert 4 `shouldBe` "IV"
    it "V" $ do
      convert 5 `shouldBe` "V"
    it "VI" $ do
      convert 6 `shouldBe` "VI"
    it "IX" $ do
      convert 9 `shouldBe` "IX"
    it "XXI" $ do
      convert 21 `shouldBe` "XXI"
    it "XL" $ do
      convert 40 `shouldBe` "XL"
    it "L" $ do
      convert 50 `shouldBe` "L"
    it "C" $ do
      convert 100 `shouldBe` "C"
    it "D" $ do
      convert 500 `shouldBe` "D"
    it "M" $ do
      convert 1000 `shouldBe` "M"
    it "MCMXCIX" $ do
      convert 1999 `shouldBe` "MCMXCIX"
    it "MMM" $ do
      convert 3000 `shouldBe` "MMM"