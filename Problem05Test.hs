module Problem05Test where

import Problem05
import Test.HUnit
import Common

-- Empty list needs a type for assertEqual
data Dummy = Dummy
	deriving(Eq, Show)

emptyList :: [Dummy]
emptyList = []

emptyListTest :: Test
emptyListTest = TestCase $ assertEqual "for (myReverse [])," emptyList $ myReverse emptyList

threeItemListTest :: Test
threeItemListTest = TestCase $ assertEqual "for (myReverse [1,2,3])," [3,2,1] $ myReverse [1,2,3]

tests = TestList [emptyListTest, threeItemListTest]

main :: IO Counts
main = runTestTT $ tests