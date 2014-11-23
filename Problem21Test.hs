module Problem21Test where

import Test.HUnit
import Problem21

insertAtTest :: Test
insertAtTest = TestCase $ assertEqual "for (insertAt 'X' \"abcd\" 2," "aXbcd" $ insertAt 'X' "abcd" 2

tests = TestList [insertAtTest]

main :: IO Counts
main = runTestTT $ tests