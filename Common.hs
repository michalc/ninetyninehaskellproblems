module Common where

import Test.HUnit
import Control.Exception
import Control.Monad

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