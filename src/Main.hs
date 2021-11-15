{-# LANGUAGE OverloadedStrings #-}
module Main where

import           Data.Time
import           Fmt

main :: IO ()
main = do
  times_str <- getContents
  let
    times_list_str = words times_str
    times_list = map read times_list_str
    diffTimes_list = map (daysAndTimeOfDayToTime 0) times_list
    sum_of_times = sum diffTimes_list
    (days, tod) = timeToDaysAndTimeOfDay sum_of_times
    hours = 24*days + toInteger (todHour tod)
    minutes = todMin tod
    seconds = floor $ todSec tod :: Int

  fmtLn $ "Sum of times is: " +|
            padLeftF 2 '0' hours|+ ":" +|
            padLeftF 2 '0' minutes|+ ":" +|
            padLeftF 2 '0' seconds|+ ""

