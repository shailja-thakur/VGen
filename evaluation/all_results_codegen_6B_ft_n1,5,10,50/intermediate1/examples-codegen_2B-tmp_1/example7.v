// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input carry_a;
input carry_b;
input final_sum;

subscription output_c;
input input_c;
  

void dead_man( ) {
  
}

void operator()() 
{ 
     copy_in_bin( carry_a, half_adder.carry_a, 1 );
     copy_in_bin( carry_b, half_adder.carry_b, 1 );
     
     /* each symbol A and B can be read in terms of the four parameter inputs
     * here we just want to avoid using the integer pixel type for small numbers
     * and the bin image for large numbers. The pixel type is just for consitency
     * with the RTC, pixels are actually floats. This also means that the final sum
     * is no longer exact.
     */
     copy_in_bin( a,endmodule
