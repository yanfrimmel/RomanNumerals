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
    it "V" $ do
      convert 5 `shouldBe` "V"
    it "IV" $ do
      convert 4 `shouldBe` "IV"