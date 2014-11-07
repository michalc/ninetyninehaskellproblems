module Problem06 where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome x = firstHalf == secondHalfReversed
	where n = length x `div` 2
	      firstHalf = take n x
	      secondHalfReversed = take n $ reverse x
