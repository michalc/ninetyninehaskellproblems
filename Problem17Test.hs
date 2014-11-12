module Problem17Test where

import Problem17
import Test.HUnit

splitTest :: Test
splitTest = TestCase $ assertEqual "for (split \"abcdefghik\" 3)," ("abc", "defghik") $ split "abcdefghik" 3

tests = TestList [splitTest]

main :: IO Counts
main = runTestTT $ tests