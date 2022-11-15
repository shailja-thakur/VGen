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
always @ (clock or reset or r_reg)
begin
if (reset)
r_reg <=5'b01001;
else
r_reg <= r_next;
end
assign q = r_reg;
assign feedback_value = r_reg[2] ^ r_reg[3];
always @*
r_next = r_reg;
assign r_xor = r_reg[4:2];
always @*
case(r_xor)
starting_string: r_next = {midstring,start_string}; //shift beforehand to start values;
blank: r_next = {shift,ans}; // mix the 4 output bits with the data at input stages 
malformed: r_next = {3'b000,5'b00000,sample[7],3'b000,4'b0000,s,3'b000endmodule
