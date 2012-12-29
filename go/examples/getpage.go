package main

import (
  "fmt"
  "os"
  "io/ioutil"
  "net/http"
)

func main() {
  content, err := getContent(os.Args[1])
  if err!=nil {
    fmt.Printf("Error:\n%v\n", err)
  } else {
    fmt.Printf("%v", content)
  }
}

func getContent(url string) (content string, err error) {
  resp, err := http.Get(url)
  if err == nil {
    defer resp.Body.Close()
    var body []byte
    body, err = ioutil.ReadAll(resp.Body)
    if err == nil {
      content = string(body)
    }
  }
  return content, err
}