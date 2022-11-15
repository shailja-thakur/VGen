// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
	sum = a + b,
	cout = sum[31:0],
	sum = (a(31:30) + b(31:30) + 1(29:29))[29:28];

  wire clk = clk_i;
  wire cin = a_i; 
  wire sum_i = sum_o; 
  wire cout_i = cout_o;
  assign clk_i = clk;
  assign a_i = cin; 
  assign sum_o = sum; 
  assign cout_o = cout;

  always @ (posedge clk_i) begin
  	if (cout_o) {
	   sum_i <= sum & sum_i & 1;
	   cout_i <= (sum_i == a) && (a = b) &&end
endmodule
