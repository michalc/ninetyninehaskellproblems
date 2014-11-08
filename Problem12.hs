module Problem12 where

data EncodedModified a = Multiple Int a | Single a
    deriving(Show, Eq)

decodeModified :: Eq a => [EncodedModified a] -> [a]
decodeModified = concatMap decodeModified'
    where decodeModified' (Multiple i x) = replicate i x
          decodeModified' (Single x)     = [x]             
