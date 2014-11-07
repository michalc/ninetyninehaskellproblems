module Problem08 where

compress :: Eq a => [a] -> [a]
compress x = foldr compress' [] x
	where compress' x (y:ys) | x == y = y:ys
	                         | otherwise = x:y:ys
	      compress' x [] = [x]     
