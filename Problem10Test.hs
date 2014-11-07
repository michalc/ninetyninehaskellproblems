module Problem10Test where

import Problem10
import Test.HUnit

encodeTest :: Test
encodeTest = TestCase $ assertEqual "for (pack [\"aaaabccaadeeee\"])," [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')] $ encode "aaaabccaadeeee"

tests = TestList [encodeTest]

main :: IO Counts
main = runTestTT $ tests