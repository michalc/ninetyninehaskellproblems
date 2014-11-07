module Problem07Test where

import Problem07
import Test.HUnit


nestedListTest :: Test
nestedListTest = TestCase $ assertEqual "for (flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) )," [1,2,3,4,5] $ flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])

tests = TestList [nestedListTest]

main :: IO Counts
main = runTestTT $ tests