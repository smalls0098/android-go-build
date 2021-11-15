package main

import (
	"fmt"
	"github.com/smalls0098/android-go-build/scrypto/md5"
)

import "C"

//export m
func m(text string) string {
	m := md5.New()
	m.Write([]byte(text))
	return fmt.Sprintf("%x", m.Sum(nil))
}

func main() {

}
