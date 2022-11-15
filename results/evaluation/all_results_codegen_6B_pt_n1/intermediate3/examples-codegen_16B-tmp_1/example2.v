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
assign q = r_reg;
// register instances to hold the lfsr values
// instantiate a counter
// instantiate bit_shifter
// instantiate pointer circuit to create shifter
// instantiate state_selecter
// counter
always @(posedge clk or posedge reset) begin
	if (reset == 1'b1) begin
 	r_reg <= 4'b0001;
	end
	else begin
	r_reg <= r_next;
	// $display($time, " : %b", r_next);
	end
end
// state registers 
always @(posedge clk or posedge reset) begin
	if (reset == 1'b1) begin
 	r_reg <= 4'b0001;
	end
	else begin
	r_reg <= next_state_reg;
	// $display($timeend
end
endmodule
