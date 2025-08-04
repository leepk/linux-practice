package main

import (
	"fmt"
	"os/exec"
)

func runCommand(name string, arg ...string) {
	cmd := exec.Command(name, arg...)
	out, err := cmd.Output()
	if err != nil {
		fmt.Println("Error:", err)
	}
	fmt.Println(string(out))
}

func main() {
	fmt.Println("=== CPU Info ===")
	runCommand("lscpu")

	fmt.Println("=== Memory Info ===")
	runCommand("free", "-h")
}
