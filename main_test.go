package main

import (
	"testing" // テストで使える関数・構造体が用意されているパッケージをimport
)

func TestSub(t *testing.T) {
	out := sub(5, 3)
	if out != 2 {
		t.Errorf("Unexpected output")
	}
}
