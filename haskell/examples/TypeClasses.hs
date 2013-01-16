class Same a where
  same :: a -> a -> Bool

sameExists :: (Same a) => a -> [a] -> Bool
sameExists x ys = length (filter (\y -> same x y) ys) > 0

instance Same Int where
  same x y = x == y

theList :: [Int]
theList = [3, 2, 4, 5, 1]

main :: IO ()
main =
  putStrLn (show (sameExists 1 theList))
