module Converter.Converter (convert) where

import Data.Maybe
import Data.Tuple

data RomanNumerals = I | V | X | L | C | D | M deriving (Eq, Show)

instance Enum RomanNumerals where
    fromEnum = fromJust . flip lookup table
    toEnum = fromJust . flip lookup (map swap table)
table = [(I, 1), (V, 5), (X, 10), (L, 50), (C, 100), (D, 500), (M, 1000)]

fromIntToRomanNumeralsEnum :: Int -> RomanNumerals
fromIntToRomanNumeralsEnum num = toEnum $ num

convert :: Int -> String
convert  num = show $ fromIntToRomanNumeralsEnum $ num
