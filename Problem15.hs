module Problem15 where

repli :: Eq a => [a] -> Int -> [a]
repli = flip $ concatMap . replicate
