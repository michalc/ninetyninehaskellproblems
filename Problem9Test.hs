module Problem9Test where

import Problem9
import Test.HUnit

packTest :: Test
packTest = TestCase $ assertEqual "for (pack [\"aaaabccaadeeee\"])," ["aaaa","b","cc","aa","d","eeee"] $ pack "aaaabccaadeeee"

tests = TestList [packTest]

main :: IO Counts
main = runTestTT $ tests