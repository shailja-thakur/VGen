// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
input cin; 
reg [3:0] sum;
always @(posedge cin)
begin
  sum <= a;
  sum <= b;
  sum <= (a + b) mod 2;
  
  if ((a == 1) && (b == 1)) {
    cout <= 1;
  }
}
end
endmodule
