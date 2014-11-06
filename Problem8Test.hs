module Problem8Test where

import Problem8
import Test.HUnit

compressTest :: Test
compressTest = TestCase $ assertEqual "for (flatten 'aaaabccaadeeee' )," "abcade" $ compress "aaaabccaadeeee"

tests = TestList [compressTest]

main :: IO Counts
main = runTestTT $ tests