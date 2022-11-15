// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire cin;
reg out;

always @(posedge cin) begin
  if( cin ) begin
    out <= a + b;
  end
end

always @(posedge cin) begin
  if ( a == 1 && b == 1 ) cout <= out;
  else cout <= 0;
end

endmodule
