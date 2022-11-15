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



//Define the function of a signed adder
function ssigned_adder_37;
input [7:0] a
input [7:0] b;
output [7:0] s;
reg [8:0] result;
output overflow;
reg ov;
assign overflow = ov;

always @ (*)
begin

result = a + b; // perform the addition to get the significand and exponent values
legit_to_s_s(result); // convert to s-representation and the correct output format

if (a[7] == 1'b0 && b[7] == 1'b0)
begin
	assign s = result[7:0]; // assign the output to s if both inputs are 0
	ov = 0; // set overflow to zero
end

if (a[7] == 1'b1 && bend
endmodule
