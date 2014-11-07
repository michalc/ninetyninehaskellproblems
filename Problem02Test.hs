module Problem02Test where

import Problem02
import Test.HUnit
import Common

testForEmptyList :: Test
testForEmptyList = TestCase $ assertError "No second last element of empty list" $ myButLast []

testForSingleItemList :: Test
testForSingleItemList = TestCase $ assertError "No second last element of list with one element" $ myButLast [1]

testForTwoItemList :: Test
testForTwoItemList = TestCase $ assertEqual "for (myButLast [1,2])," 1 $ myButLast [1,2]

testForThreeItemList :: Test
testForThreeItemList = TestCase $ assertEqual "for (myButLast [1,2,3])," 2 $ myButLast [1,2,3]

tests = TestList [testForEmptyList, testForSingleItemList, testForTwoItemList, testForThreeItemList]

main :: IO Counts
main = runTestTT $ tests