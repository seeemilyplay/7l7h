firstInt :: [Int] -> Int
firstInt (x:xs) = x

first :: [a] -> a
first (x:xs) = x

main :: IO ()
main =
  putStrLn (show (first [1, 2, 3])
            ++ show (first "abc")
            ++ show (firstInt [3,2,1]))
