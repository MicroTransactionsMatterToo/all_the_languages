import Data.Char (ord)

remove :: (Ord a) => a -> [a] -> [a]
remove item [] = []
remove item (x:xs)
      | x /= item = x : (remove item xs)
      | otherwise = remove item xs

splitString :: String -> [[Char]]
splitString [] = []
splitString (x:xs) = (x : []) : (splitString xs)

stringToNumList :: String -> [Int]
stringToNumList [] = []
stringToNumList (x:xs) = ord(x) : (stringToNumList xs)

charListToInt :: [Char] -> [Int]
charListToInt [] = []
charListToInt (x:xs) = ord(x) : (charListToInt xs)
