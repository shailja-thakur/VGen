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
initial begin
    r_reg = 0b111'0000;
    r_next = r_reg;
    if reset = 1 then r_reg = 1'b1111;
    feedback_value = r_reg xor r_reg xor r_reg xor r_reg;
    if clk = 1 then r_next = r_reg xor r_next;
    q = r_next;
end


// Use the design of the slow-count register to
// generate a polynomial generator with alpha = 0x0005
// and alpha^2 = 0x0060
// and alpha^3 = 0x0128
// and alpha^4 = 0x03a0
// and alpha^5 = 0x0770
// and alpha^6 = 0x0e80
// and alpha^7 = 0x1d00
// and alpha^8endmodule
