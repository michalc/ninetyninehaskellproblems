module Problem11 where

import Data.List
import Problem10

data EncodedModified a = Multiple Int a | Single a
	deriving(Show, Eq)

encodeModified :: Eq a => [a] -> [EncodedModified a]
encodeModified = map encodeModified' . encode 
	where encodeModified' (i, x) | i == 1    = Single x
	                             | otherwise = Multiple i x