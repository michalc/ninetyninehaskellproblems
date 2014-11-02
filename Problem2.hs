module Problem2 where

myButLast :: [a] -> a
myButLast [] = error "No second last element of empty list"
myButLast (x:[]) = error "No second last element of list with one element"
myButLast (x:y:[]) = x
myButLast (x:xs) = myButLast xs