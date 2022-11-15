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
// initializing the counter at 1 to avoid any count
// initializing the q output at 0 to avoid any output
// initializing the r_reg at 0 to avoid any count
// initializing the q output at 0 to avoid any output
// assign the value of the counter to the output
assign q = r_reg;
assign r_next = (reset == 1'b1) ? {r_reg[3:0], feedback_value} : {r_reg[3:0], r_reg[4]^r_reg[2]};
assign feedback_value = r_reg[2] ^ r_reg[4];
always @(posedge clk or negedge reset)
begin
if(~reset)
	r_reg <= 5'b0;
else
	r_reg <= r_next;
end
endmodule
