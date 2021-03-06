module Converter.Converter (convert) where

import Data.Maybe
import Data.Tuple

type RomanNumeralsTuple = (String,Int)

findRomanNumberTuple :: Int -> RomanNumeralsTuple
findRomanNumberTuple num
  | num >= 1000  =  ("M",1000)
  | num >= 900   =  ("CM",900)
  | num >= 500   =  ("D",500)
  | num >= 400   =  ("CD",400)
  | num >= 100   =  ("C",100)
  | num >= 90    =  ("XC",90)
  | num >= 50    =  ("L",50)
  | num >= 40    =  ("XL",40)
  | num >= 10    =  ("X",10)
  | num >= 9     =  ("IX",9)
  | num >= 5     =  ("V",5)
  | num >= 4     =  ("IV",4)
  | num >= 1     =  ("I",1)
  | otherwise    =  ("",0)

fromIntToRomanNumeralsString :: Int -> String
fromIntToRomanNumeralsString num
 | num > 0 = fst romanTuple ++ fromIntToRomanNumeralsString (num - snd romanTuple)
 | otherwise = ""
 where romanTuple = findRomanNumberTuple num

convert :: Int -> String
convert  num =  fromIntToRomanNumeralsString $ num
