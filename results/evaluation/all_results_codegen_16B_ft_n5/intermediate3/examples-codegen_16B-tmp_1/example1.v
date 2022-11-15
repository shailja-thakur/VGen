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
assign feedback_value = (r_reg[2] ^ r_reg[4]);
assign r_next = ( r_reg | {1'b1,feedback_value} );
always @(posedge clk ) begin 
	if (reset == 1'b0) begin 
	 // reset=0 results in r_reg = {1, 0000...001} = {11, 0001...001};
	 // (In the next statement the value of 4 least significant bits in the CBA version was 0001, now it is 01 instead) 
	 r_reg <= {3'b011, 4'b0001};
	end
	else	
	r_reg <= r_next; 
end
 assign q = r_reg; 
endmodule
