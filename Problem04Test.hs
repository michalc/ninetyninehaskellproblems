module Problem04Test where

import Problem04
import Test.HUnit
import Common

emptyListTest :: Test
emptyListTest = TestCase $ assertEqual "for (myLength [])," 0 $ myLength []

singleItemListTest :: Test
singleItemListTest = TestCase $ assertEqual "for (myLength [[]])," 1 $ myLength [[]]

twoItemListTest :: Test
twoItemListTest = TestCase $ assertEqual "for (myLength [[],[]])," 2 $ myLength [[],[]]

tests = TestList [emptyListTest, singleItemListTest, twoItemListTest]

main :: IO Counts
main = runTestTT $ tests