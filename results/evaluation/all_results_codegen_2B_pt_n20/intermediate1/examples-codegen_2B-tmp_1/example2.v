// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

initial 
begin
  cout = 0;
  sum = 0;
  [3:0] = ( b[3:0] << 4 ) + a[3:0];
  cout = 1;
end

initial
begin
  cout = \b[[2'b00]:take( 4, \b[3:0] )] + ( \b[1'b11] & a[1:0] );
end

//   MCU:Xilinx based 32-bit joystick controller core. Runs on Arduino boards.
end
`
endmodule
