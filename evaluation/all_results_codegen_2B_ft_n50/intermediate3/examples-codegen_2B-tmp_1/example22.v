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
// assign q to the next value r_next
assign r_next = r_reg<<2|r_reg<<3;
always @(posedge clk)case(r_reg)
5'b00000:r_reg <= 5'b00001;
5'b00100:r_reg <= 5'b00011;//5'b00010;
5'b00101:r_reg <= 5'b0011;//5'b001110;
5'b00110:r_reg <= 5'b00111;//5'b0011010;
5'b00111:r_reg <= 5'b0000;//5'b00111000;
5'b01000:r_reg <= 5'b0001;//5'b0001000;//5'b10101010;
5'b01001:r_reg <=endmodule
