module Problem13 where

import Data.List
import Problem10

data EncodedModified a = Multiple Int a | Single a
	deriving(Show, Eq)

encodeDirectExplicit :: Eq a => [a] -> [(Int,a)]
encodeDirectExplicit [] = []
encodeDirectExplicit x = (length $ fst split, head x):(encodeDirectExplicit $ snd split)
	where split = span (== head x) x

encodeDirect :: Eq a => [a] -> [EncodedModified a]
encodeDirect = map encodeDirect' . encodeDirectExplicit 
	where encodeDirect' (i, x) | i == 1    = Single x
	                           | otherwise = Multiple i x