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
// assign feedback value concatenated with 4 MSBs of r_reg to r_next
// assign r_reg to the output q
assign q = (reset) ? r_reg : r_next;
// FSM parameter values
param
	S0 = 3'b000, 
	S1 = 3'b100, 
	S2 = 3'b101, 
	S3 = 3'b110, 
	S4 = 3'b111;
// internal state assignments
reg [2:0] state;	// state register to track current state
reg [2:0] nextstate;	// next state for the state register
reg [2:0] count; // maximum counter of 7 bits
// Galois operators based feedback logic
assign feedback_value = r_reg[2] ^ r_reg[4];
// FSM state machine definition
always @ (posedge clk or posedge reset)	
	if (reset)
	begin
// state transition case
	case (end
endmodule
