module Problem12Test where

import Problem12
import Test.HUnit

decodeTest :: Test
decodeTest = TestCase $ assertEqual "for (decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e'])," "aaaabccaadeeee" $ decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']

tests = TestList [decodeTest]

main :: IO Counts
main = runTestTT $ tests