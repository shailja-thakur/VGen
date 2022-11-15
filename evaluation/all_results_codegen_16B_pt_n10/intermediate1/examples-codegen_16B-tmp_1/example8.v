// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @(posedge a, b) begin
  sum <= a & b;
  if(a & ~b){ // if (rst || !a & b)
    // Carry-out is bit 0 of sum
    cout <= ~bit(sum, 1);
    // The sum is meant to produce 0 for 'carry', therefore output the 0 here.
  } else { // This 'else' statement is to get it to have some output in non-RST.
    cout <= 1;
  }
end

half_adder uut0( s0, s1, cout, sum );

always @(posedge c2) begin
  case(c2) begin
    // The 'case' manipulates the 'sum' of uut0 and outputs to cout.
    if( uut0.uut_x.a ) begin
      coutend
end
end
endmodule
