// Design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
module advshift(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63:0] q); 
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift.
// 2'b00: shift left by 1 bit.
// 2'b01: shift left by 8 bits.
// 2'b10: shift right by 1 bit.
// 2'b11: shift right by 8 bits.


`

func genHcl() {
	fmt.Println("package real_mcu\n\nimport (")
	fmt.Print("\"errors\"\n")
	fmt.Print(",\n\"fmt\"\n)")

	fmt.Print("\n")
	fmt.Print("\n")

	fmt.Print("\n")
	fmt.Print("func mul1(a, b int, carry int) int {\n")
	fmt.Printf("if b == 0 { return 0 }\n")
	fmt.Printf("return a*b + carry ")
	fmt.Printf("if b == 0 { return 0 }\n")
	fmt.Printf("return mul1(a, b//2, (a * b)%2) ")
	fmtendmodule
