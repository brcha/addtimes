module Main where

import           Data.Time

main :: IO ()
main = do
  times_str <- getContents
  let
    times_list_str = words times_str
    times_list = map read times_list_str
    diffTimes_list = map timeOfDayToTime times_list
    sum_of_times = sum diffTimes_list
    sum_str = formatTime defaultTimeLocale "%d days %0H:%0M:%0S" sum_of_times

  print $ "Sum of times is: " ++ sum_str

