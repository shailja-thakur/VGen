// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The half adder is implemented as a 2-bit register.
// The input bits are stored in the least significant bits of the register.
// The output bits are stored in the most significant bits of the register.
// The sum is stored in the least significant bits of the register.
// The carry-out is stored in the most significant bits of the register.
// The register is initially set to zero.
initial begin
	sum = 0;
	cout = 0;
end

// The half adder adds two bits.
// The input bits are stored in the least significant bits of the register.
// The output bits are stored in the most significant bits of the register.
// The sum is stored in the least significant bits of the register.
// The carry-out is stored in the most significant bits of the register.
always @(posedge clk) begin
	if( clk )end
endmodule
