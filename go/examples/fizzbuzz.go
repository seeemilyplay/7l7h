package main

import (
  "fmt"
)

func main() {
  for i := 1; i <= 100; i++ {
    if dividesBy(i,15) {
      fmt.Println("FizzBuzz")
    } else if dividesBy(i,3) {
      fmt.Println("Fizz")
    } else if dividesBy(i,5) {
      fmt.Println("Buzz")
    } else {
      fmt.Printf("%d\n", i)
    }
  }
}

func dividesBy(n int, d int) bool {
  return n % d == 0
}