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
// instantiate a shift register as the D
assign r_next = {r_reg[4:1], r_reg[0] ^ r_reg[4]};
assign feedback_value = r_reg[2] ^ r_reg[4];
always @(posedge clk, posedge reset) 
begin
	if(reset)
	begin
	r_reg <= 32'h0;
	//output <= 32'h0;
	/*
	$display("Output is %b, State is %b", output_value, r_reg);
	//$display("Output is %2b, State is %2b", output, r_reg);
	$monitor("Time = %t, Clock = %b, Reset = %b, Q=%b, Cout=%b",$time, clk,end
end
endmodule
