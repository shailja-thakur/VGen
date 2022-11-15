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
assign feedback_value = r_reg[XOR_VAL];
assign q = r_reg ^ r_next;
// always @ ( feedback_value ) begin
always @ ( posedge clk or posedge reset ) begin
// when reset is high
if ( reset ) begin 
r_reg <= 5'b1;
	// ensure that r_reg is xored with 9 once every clock cycle to
	// generate a random sequence. we generate the JJ pattern required
	// to work through 4 taps by asserting a pulsed random data signal.
// when reset is not high
end else begin
// initalising value to 0
r_reg <= 5'b0;
// always if random data value is asserted
// give feedback_value a pulsed stimulus 
localparam MAX = 32'b10010101110110101110;
// check if random number for this cycle canend
end
endmodule
