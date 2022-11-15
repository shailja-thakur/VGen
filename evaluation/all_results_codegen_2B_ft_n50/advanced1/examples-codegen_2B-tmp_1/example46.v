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


wire carryb0,carryb1,carry_overflow;
wire [7:0] s,over,temp_over,borrowb,sumdiff;
wire carrya0,carrya1,overflow,overflow_o;
wire [7:0] a_tmp;
wire [7:0] temp;

assign s = sumdiff ; //shunt the sumdiff to the final result itself

assign carrya0 = a[0];
assign carrya1 = a[1];
assign carrya0b1 = (carrya0 & b[0]) + (b[0] & carrya1) ;
assign carryb0b1 = (carryb0 & b[0]) + (b[0] & carryb1) ;
assign overflow_o = (carrya0b1 & carryb0b1) + (endmodule
