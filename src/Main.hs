{-# LANGUAGE OverloadedStrings #-}
module Main where

import qualified Data.ByteString.Char8 as C
import           Fmt

sumTimes :: (Int, Int, Int) -> [Int] -> (Int, Int, Int)
sumTimes (acch, accm, accs) l = (resh, resm, ress)
  where
    [h, m, s] = take 3 l
    sums = accs + s
    ress = sums `mod` 60
    summ = accm + m + (sums `div` 60)
    resm = summ `mod` 60
    resh = acch + h + (summ `div` 60)

main :: IO ()
main = do
  times_str <- C.getContents
  let
    times_list_str = C.words times_str
    times_list_parts = map (C.split ':') times_list_str
    times_list_parts_str = map (map C.unpack) times_list_parts
    times_list_parts_parsed = map (map read) times_list_parts_str :: [[Int]]
    (hours, minutes, seconds) = foldl sumTimes (0, 0, 0) times_list_parts_parsed

  fmtLn $ "Sum of times is: " +|
            padLeftF 2 '0' hours|+ ":" +|
            padLeftF 2 '0' minutes|+ ":" +|
            padLeftF 2 '0' seconds|+ ""

