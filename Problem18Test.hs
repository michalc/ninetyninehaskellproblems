module Problem18Test where

import Problem18
import Test.HUnit

sliceTest :: Test
sliceTest = TestCase $ assertEqual "for (slice ['a','b','c','d','e','f','g','h','i','k'] 3 7)," "cdefg" $ slice ['a','b','c','d','e','f','g','h','i','k'] 3 7

tests = TestList [sliceTest]

main :: IO Counts
main = runTestTT $ tests