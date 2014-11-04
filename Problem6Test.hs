module Problem6Test where

import Problem6
import Test.HUnit
import Common

-- Empty list needs a type for assertEqual
data Dummy = Dummy
	deriving(Eq, Show)

emptyList :: [Dummy]
emptyList = []

emptyListTest :: Test
emptyListTest = TestCase $ assertEqual "for (isPalindrome [])," True $ isPalindrome emptyList

threeItemListTest1 :: Test
threeItemListTest1 = TestCase $ assertEqual "for (isPalindrome [1,2,3])," False $ isPalindrome [1,2,3]

threeItemListTest2 :: Test
threeItemListTest2 = TestCase $ assertEqual "for (isPalindrome [1,2,1])," True $ isPalindrome [1,2,1]

fourItemListTest1 :: Test
fourItemListTest1 = TestCase $ assertEqual "for (isPalindrome [1,2,3,4])," False $ isPalindrome [1,2,3,4]

fourItemListTest2 :: Test
fourItemListTest2 = TestCase $ assertEqual "for (isPalindrome [1,2,2,1])," True $ isPalindrome [1,2,2,1]


tests = TestList [threeItemListTest1, threeItemListTest2, fourItemListTest1, fourItemListTest2]

main :: IO Counts
main = runTestTT $ tests