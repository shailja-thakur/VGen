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


wire signed [7:0] existing_overflow_sign_in;
wire [7:0] carry_input ={1'b0,1'b1}; //OLD COMMENTS Changed to 1'b1 for adding to gain extra 1 else it'll be 0 which does NOT look correct
wire addone1 = (a[7] == b[7]) ? (a) + carry_input : (a) + {1'b0,1'b1}; 
wire [7:0] top_overflow_output;


top_adder_and top_adder(
.a(addone1),
.b(b),
.cin(1'b0),
.s(s),
.out(top_overflow_output)
); 

wire [3:0] halfstep;
wire [7:0] secstep; 

both_endmodule
