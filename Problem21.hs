module Problem21 where

insertAt :: a -> [a] -> Int -> [a]
insertAt x xs n = fst s ++ [x] ++ snd s
	where s = splitAt (n-1) xs