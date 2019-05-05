package main

import (
	"fmt"
)

const div = 1000000007

//noinspection GoUnhandledErrorResult
func main() {
	var n, m, f int
	fmt.Scan(&n)
	fmt.Scan(&m)

	var fs = make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&f)
		fs[i] = f
	}

	// two pointers
	already := map[int]bool{}

	// half open section
	// key: right, value: max left
	var ls = make([]int, n+1)
	left := 0
	for right := 0; right < n; right++ {
		for left < right && already[fs[right]] {
			already[fs[left]] = false
			left++
		}

		already[fs[right]] = true
		ls[right+1] = left
	}

	// dp
	var dp = make([]int, n+1)
	var sums = make([]int, n+2)
	dp[0] = 1
	sums[0] = 0
	sums[1] = 1
	for i := 1; i <= n; i++ {
		dp[i] = (sums[i] - sums[ls[i]] + div) % div
		sums[i+1] = (sums[i] + dp[i]) % div
	}

	fmt.Println(dp[n])
}
