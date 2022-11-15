// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
// set r_reg in its initial state on posedge reset
assign q = r_reg;

// test vectors for design
// [104, 105, 98] --> [100, 99, 99]
// [105, 104, 98] --> [102, 101, 101]
// [104, 98, 104] --> [101, 99, 102]
// [98, 104, 105] --> [101, 100, 102]
// [104, 105, 105] --> [102, 102, 102]

`

func (c clock) test() {
	buf := bytes.Buffer{}
	for j := 0; j < 4; j++ {
		buf.WriteString(fmt.Sprintf("%d ", j))
	}
	fmt.Println("    Input Values:", buf.String())

	for i := 0; i < 16; iendmodule
