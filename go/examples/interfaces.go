package main

import (
  "fmt"
)

type Vocal interface {
  Speak() string;
}

func printSpeech(v Vocal) {
  fmt.Println(v.Speak())
}

type Queen struct { speech string }

func(q *Queen) Speak() string {
  return q.speech
}

func main() {
  q := new(Queen)
  q.speech = "To my loyal subjects, I say this ..."
  printSpeech(q)
}
