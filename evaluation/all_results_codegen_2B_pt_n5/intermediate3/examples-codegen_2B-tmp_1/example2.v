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

// automata

always @(posedge clk)
    if(reset)
        r_next = 0;
    else
	{
	// on rising clock value of feedbram will always result in the 1
	// this allows the system to process input and output with any clock
		r_next = r_reg ^ feedback_value;
		r_reg = (r_reg >> 1) | (r_next << 3);
	}
endmodule
