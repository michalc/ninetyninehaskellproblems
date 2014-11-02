module Problem1Test where

import Problem1
import Test.HUnit
import Common

testForEmptyList :: Test
testForEmptyList = TestCase $ assertError "No last element of empty list" $ myLast []

testForSingleItemList :: Test
testForSingleItemList = TestCase $ assertEqual "for (myLast [1])," 1 $ myLast [1]

testForTwoItemList :: Test
testForTwoItemList = TestCase $ assertEqual "for (myLast [1,2])," 2 $ myLast [1,2]

tests = TestList [testForEmptyList, testForSingleItemList, testForTwoItemList]

main :: IO Counts
main = runTestTT $ tests