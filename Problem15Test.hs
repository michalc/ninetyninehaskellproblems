module Problem15Test where

import Problem15
import Test.HUnit

repliTest :: Test
repliTest = TestCase $ assertEqual "for (repli \"abc\")," "aaabbbccc" $ repli "abc" 3

tests = TestList [repliTest]

main :: IO Counts
main = runTestTT $ tests