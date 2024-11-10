package main

import (
    "fmt"
    "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hello world, my name is Meybili Olivares")
}

func main() {
    http.HandleFunc("/", handler)
    fmt.Println("Servidor corriendo en http://localhost:8080")
    http.ListenAndServe(":8080", nil)
}