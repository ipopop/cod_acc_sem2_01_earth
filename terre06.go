package main

// Invert the string given as argument (caution: manage potential argument errors).
// Langage : Golang
// Exec Command in Shell : go run terre06.go "somórd / ςομόρδ te niláp / νιλάπ cerg ud ,emordnilap eL"

import (
	"fmt"
	"os"
	"regexp"
)

var nonAlphanumericRegex = regexp.MustCompile(`[^\p{L}\p{N} ]+`)

func clearString(str string) string {
    return nonAlphanumericRegex.ReplaceAllString(str, "")
}

func reverseString(str string) (result string) {
	for _, v := range str {
		result = string(v) + result
	}
	return
}

func main() {
	for i, args := range os.Args {
			if i >= 1 {
				fmt.Println(reverseString(clearString(args)))
			}
	}
}
