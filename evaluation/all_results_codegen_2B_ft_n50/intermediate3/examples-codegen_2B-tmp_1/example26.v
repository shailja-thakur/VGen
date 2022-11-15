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
genvar i;
generate 
for(i=0;i<5;i=i+1)
begin
//if reset is high define input values as 2500
//if reset is low let the assign statements in the Basic Encoding in the procedural
//if none are defined fall back to the basic encoding
	always@(posedge clk or posedge reset)
	//if reset is Halt the signal of the sequencer to be sure
	//to the next assignment value when the clock cycle finishes
	if (reset)begin
	//if not reset write 12bit initial value 0x0000000000 in that the
	//output is 4 MSB of the input value
	r_reg = {5{1'b0}};
	end
	else
begin 
	assign r_next[i] = ((~a[i] & r_reg[i]) | (~bend
end
endmodule
