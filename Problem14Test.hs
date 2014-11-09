module Problem14Test where

import Problem14
import Test.HUnit

dupliTest :: Test
dupliTest = TestCase $ assertEqual "for (dupli [1, 2, 3])," [1,1,2,2,3,3] $ dupli [1, 2, 3]

tests = TestList [dupliTest]

main :: IO Counts
main = runTestTT $ tests