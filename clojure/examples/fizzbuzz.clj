(defn fb [x]
  (if (== 0 (mod x 3))
    (if (== 0 (mod x 5))
      "FizzBuzz"
      "Fizz")
    (if (== 0 (mod x 5))
      "Buzz"
      x)))

(defn fizzbuzz []
  (map fb (range 1 100)))
