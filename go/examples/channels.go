package main

import (
  "fmt"
)

func main() {
  c := make(chan int)
  go func() {
    fmt.Println("How nice of you to wait.")
    c <- 1
  }()
  <- c
}
