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

assign q = r_reg; 

always @(posedge clk)

begin
if (reset == 1'b1)
r_reg = 5'b11001; 
else
begin
r_reg = r_next;
end
end

// define the next state of the soprt
// add the feedback key value to the output of the state machine
// also add 0.25 degree shift right by 1/4 bit position i.e 5 and 4.
assign feedback_value = r_reg[4] ^ r_reg[4] ^ r_reg[5] ^ r_reg[4] ^ r_reg[3] ^ r_reg[2] ^ r_reg[2] ^ r_reg[1] ^ r_reg[1] ^ r_reg[1] ^ r_reg[1] ^ 0.25 * qendmodule
