module Problem17 where

split :: [a] -> Int -> ([a],[a])
split = flip splitAt
