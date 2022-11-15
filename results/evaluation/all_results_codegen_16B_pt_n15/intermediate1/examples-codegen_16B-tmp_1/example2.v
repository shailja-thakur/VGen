// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
  private wire carry_out;
  DFF2_1adder decoded_adder( .OUTPUT( cout ), .carry_data( carry_out ) );
  always_ff() begin
    decoded_adder.ff();
  end
  half_adder(   
    .a( a ),     // inputs 0
    .b( b ),     // inputs 1
    .sum(),      // outputs 2
    .carry_out( carry_out ) ); // outputs 3.  NOT IN THE PROBLEM. This line has been uncommented and 
                              // allows you to see that the LUT contains two outputs. The sum and 
                              // carry-out are hidden inside of the DFF 2-1 adder which sets 
                              // common outputs to the two registers.
endmodule
