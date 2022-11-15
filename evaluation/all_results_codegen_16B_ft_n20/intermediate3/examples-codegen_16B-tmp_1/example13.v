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
always @ (posedge clk or posedge reset)
// if a negative rising edge or of reset
// assign r_next to 1
begin 
if (reset)
assign r_next = 5'b01110;
// otherwise cycle the r_reg
else begin
assign feedback_value = r_reg[2] ^ r_reg[4];
assign r_next = {r_reg[4], r_reg[4] ^ r_reg[3]};
assign q = r_next;
end
end
endmodule
