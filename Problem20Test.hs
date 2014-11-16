module Problem20Test where

import Test.HUnit
import Problem20

removeAtTest :: Test
removeAtTest = TestCase $ assertEqual "for (removeAt \"abcd\"," ('b',"acd") $ removeAt 2 "abcd"

tests = TestList [removeAtTest]

main :: IO Counts
main = runTestTT $ tests