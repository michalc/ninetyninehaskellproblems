module Problem11Test where

import Problem11
import Test.HUnit

encodeTest :: Test
encodeTest = TestCase $ assertEqual "for (pack [\"aaaabccaadeeee\"])," [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e'] $ encodeModified "aaaabccaadeeee"

tests = TestList [encodeTest]

main :: IO Counts
main = runTestTT $ tests