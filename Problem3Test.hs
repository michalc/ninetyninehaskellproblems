module Problem3Test where

import Problem3
import Test.HUnit
import Common

firstIndexTest :: Test
firstIndexTest = TestCase $ assertEqual "for (elementAt [1,2,3] 1)," 1 $ elementAt [1,2,3] 1

secondIndexTest :: Test
secondIndexTest = TestCase $ assertEqual "for (elementAt [1,2,3] 2)," 2 $ elementAt [1,2,3] 2

thirdIndexTest :: Test
thirdIndexTest = TestCase $ assertEqual "for (elementAt [1,2,3] 3)," 3 $ elementAt [1,2,3] 3

stringTest :: Test
stringTest = TestCase $ assertEqual "for (elementAt 'hello' 5)," 'o' $ elementAt "hello" 5

tests = TestList [firstIndexTest, secondIndexTest, thirdIndexTest, stringTest]

main :: IO Counts
main = runTestTT $ tests