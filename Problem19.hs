module Problem19 where

import Problem18(slice)

rotate :: [a] -> Int -> [a]
rotate xs n = slice (cycle xs) (offset + 1) $ (offset + l)
	where l = length xs
	      offset = n `mod` l
