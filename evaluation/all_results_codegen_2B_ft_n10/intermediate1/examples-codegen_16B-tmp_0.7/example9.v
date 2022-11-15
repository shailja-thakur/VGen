// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// declare wires 
wire xor_out;
wire and_out;

// instantiate modules
xor U1 (a, b, xor_out);

and U2 (a, b, and_out);

// if a = 1, b = 1 then sum = 1
// else sum = 0
assign sum = (~xor_out)& and_out;

// if a = 1, b = 0 then carryout = 0
// if a = 0, b = 1 then carryout = 0
// else carryout = 1
assign cout = (a&b) | (b&~a);

endmodule
