module Problem1Test where
import Test.HUnit
import Control.Exception
import Control.Monad
import Problem1

-- http://stackoverflow.com/q/13350164/1319998
instance Eq ErrorCall where
    x == y = (show x) == (show y)

assertException :: (Exception e, Eq e) => e -> IO a -> IO ()
assertException ex action =
    handleJust isWanted (const $ return ()) $ do
        action
        assertFailure $ "Expected exception: " ++ show ex
  	where isWanted = guard . (== ex)

assertError :: String -> IO a -> IO ()
assertError ex f = assertException (ErrorCall ex) $ evaluate f

testForEmptyList :: Test
testForEmptyList = TestCase $ assertError "No last element of empty list" $ myLast []

testForSingleItemList :: Test
testForSingleItemList = TestCase $ assertEqual "for (myLast [1])," 1 $ myLast [1]

testForTwoItemList :: Test
testForTwoItemList = TestCase $ assertEqual "for (myLast [1,2])," 2 $ myLast [1,2]

tests = TestList [testForEmptyList, testForSingleItemList, testForTwoItemList]

main :: IO Counts
main = runTestTT $ tests