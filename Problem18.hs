module Problem18 where

slice :: [a] -> Int -> Int -> [a]
slice xs n m = fst $ splitAt (m-n+1) $ snd $ splitAt (n-1) xs
