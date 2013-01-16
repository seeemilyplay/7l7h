fizzbuzz :: [String]
fizzbuzz = map fb [1..100]

fb :: Int -> String
fb x | x `mod` 15 == 0 = "FizzBuzz"
fb x | x `mod` 5 == 0 = "Fizz"
fb x | x `mod` 3 == 0 = "Buzz"
fb x = show x