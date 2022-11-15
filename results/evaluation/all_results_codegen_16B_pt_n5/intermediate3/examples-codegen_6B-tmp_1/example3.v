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
always @( posedge clk, 	posedge clk, posedge reset ) begin 
	if (reset) 
	begin 
	out = 0; 
	end 
	else 
	begin 
	r_next = { r[3:0],feedback_value }; 
	out = q[4:0]; 
	//concatenate q and the decimal 5 and store it in out 
	end 
end 
//assign q to r_reg
assign q = r_reg; 
// define the functionality of the register
// read operation
always @(posedge clk) begin 
	if ( r_next == 28'b0000000000) 
	begin 
	r_reg = { r[3:0],feedback_value }; 
	end 
	else 
	begin 
	end
end
endmodule
