module Problem13Test where

import Problem13
import Test.HUnit

encodeDirectTest :: Test
encodeDirectTest = TestCase $ assertEqual "for (pack [\"aaaabccaadeeee\"])," [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e'] $ encodeDirect "aaaabccaadeeee"

tests = TestList [encodeDirectTest]

main :: IO Counts
main = runTestTT $ tests