module Problem01 where

myLast :: [a] -> a
myLast [] = error "No last element of empty list"
myLast (x:[]) = x
myLast (x:xs) = myLast xs