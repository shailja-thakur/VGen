// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @(posedge clk) begin
   if (rst) cout <= 0;
   else if (a) {
      cout <= sum;
      sum <= a + b;
   }
end

endmodule
