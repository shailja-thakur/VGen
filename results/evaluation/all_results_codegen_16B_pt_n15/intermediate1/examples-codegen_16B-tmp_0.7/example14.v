// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg [3:0] carry_in = 0, carry_out;
reg [3:0] sum = 0, bit_in_a, bit_in_b, bit_out;

always @(posedge clk) begin
	if (rst) begin
		carry_out = 0;
		sum = 0;
	end else begin
		bit_in_a = a;
		bit_in_b = b;
		bit_out = sum + carry_in + bit_in_a + bit_in_b;
		carry_out = bit_out[2];
		sum = bit_out[3:0];
	end
end

always @(posedge clk) begin
	cout = sum;
end

//half_adder half_adder_inst ( a, b );

always @(posedge clendmodule
