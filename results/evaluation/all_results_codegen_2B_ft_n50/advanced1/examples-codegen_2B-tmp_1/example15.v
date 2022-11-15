// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low


assign overflow = ((a[7] & b[7]) & (~s[7]) & (~|s[7:0])) | ((~a[7] & ~b[7]) & s[7] & (~|s[7:0]));

// Implemented with a full adder 
 

// extend the width of the inputs to 8 to reach the most significat bits 
assign {1'b0,gnd} = {a[6:0],1'b0}; 
assign e_and_ce_b = {gnd, b[6:0]};

// cases section fpga4student.com FPGA projects, VHDL projects, Verilog projects 

endmodule
