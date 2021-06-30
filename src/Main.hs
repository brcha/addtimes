module Main where

import           Data.Time (timeOfDayToTime)

main :: IO ()
main = do
  times_str <- getContents
  let
    times_list_str = words times_str
    times_list = map read times_list_str
    diffTimes_list = map timeOfDayToTime times_list
    sum_of_times = sum diffTimes_list

  print $ "Sum of times is: " ++ show sum_of_times

