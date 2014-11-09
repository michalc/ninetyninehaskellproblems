module Problem14 where

dupli :: Eq a => [a] -> [a]
dupli = foldr dupli' [] 
    where dupli' x = (:) x . (:) x
