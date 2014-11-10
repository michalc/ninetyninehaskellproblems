module Problem16Test where

import Problem16
import Test.HUnit

dropEveryTest :: Test
dropEveryTest = TestCase $ assertEqual "for (repli \"abcdefghik\")," "abdeghk" $ dropEvery "abcdefghik" 3

tests = TestList [dropEveryTest]

main :: IO Counts
main = runTestTT $ tests