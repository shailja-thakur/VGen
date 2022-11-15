// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// Combinational circuit often needs gates, but Verilog is trying to misinterpret any gate as a structural gate.
// This leads to a lot of conditional operators and problems later.
assign sum = a^b;
assign cout = (a&b) | (a^b);
endmodule
