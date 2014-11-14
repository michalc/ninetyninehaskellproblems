module Problem19Test where

import Problem19
import Test.HUnit

rotateLeft :: Test
rotateLeft = TestCase $ assertEqual "for (rotate ['a','b','c','d','e','f','g','h'] 3)," "defghabc" $ rotate ['a','b','c','d','e','f','g','h'] 3

rotateRight :: Test
rotateRight = TestCase $ assertEqual "for (rotate ['a','b','c','d','e','f','g','h'] -2)," "ghabcdef" $ rotate ['a','b','c','d','e','f','g','h'] (-2)

tests = TestList [rotateLeft, rotateRight]

main :: IO Counts
main = runTestTT $ tests