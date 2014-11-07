module Problem10 where

import Data.List


encode :: Eq a => [a] -> [(Int, a)]
encode = map encode' . group 
	-- Apparently can do more point-free http://stackoverflow.com/a/12395306/1319998
	-- but I don't quite understand it yet... 
	where encode' x = (length x, head x)