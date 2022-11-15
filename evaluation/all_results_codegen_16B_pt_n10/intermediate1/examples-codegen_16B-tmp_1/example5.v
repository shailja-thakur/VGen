// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire dout, sum;
wire cin = a, cout_b, sum_b; 

// input two bits each via a
always @(posedge clk) begin
  cout_b <= {dout, cout_b, a};
  if ( A ) {
    sum_b <= b;
  } else {
    sum_b <= {sum, sum_b, b};
  }
  sum <= ( sum_b | ~cout_b ); 
end

endmodule
