module Problem16 where

dropEvery :: [a] -> Int -> [a]
dropEvery xs n = snd $ unzip $ filter isNotDivByN $ zip [1..] xs
	where isNotDivByN (n,_) = n `mod` 3 /= 0