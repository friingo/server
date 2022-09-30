package main

import (
	"math/rand"
	"time"

	"github.com/friingo/server/cmd"
)

func main() {
	rand.Seed(time.Now().UnixNano())
	cmd.Execute()
}
