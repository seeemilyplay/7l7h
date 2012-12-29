package main

import (
  "fmt"
  "time"
)

func main() {
  go func() {
    fmt.Println("I'm in a goroutine")
  }()
  time.Sleep(5)
}
