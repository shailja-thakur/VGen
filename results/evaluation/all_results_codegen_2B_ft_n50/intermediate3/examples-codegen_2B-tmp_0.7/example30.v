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
// assign the input of a shifter
assign q = r_reg;
shifter_5bit sh_inst(.a(r_reg[4:0]), .s(5'b01001), .y(r_next[4:0]));
shifter_4bit sh_inst1(.a(r_reg[3:0]), .s(5'b01000), .y(r_next[3:0]));
shifter_4bit sh_inst2(.a(r_reg[3:0]), .s(5'b01000), .y(r_next[3:0]));
shifter_4bit sh_inst3(.a(r_reg[3:0]), .s(5'b01100), .y(r_next[3:0]));
shifter_4bit sh_inst4(.endmodule
