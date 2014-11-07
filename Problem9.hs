module Problem9 where

import Data.List

-- Is this cheating? ;-)
pack :: Eq a => [a] -> [[a]]
pack = group