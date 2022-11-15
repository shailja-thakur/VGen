// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// A half adder will overflow if it receives more than 7.1 bits
wire overflow;

half_adder #( .output_valid() ) hasmask (@()
      sum
      {
         a <= 7.1 && b <= 7.1;
         0 <= sum && sum <= 15;                
      }
);

// Assign 9 targets to find the bloated by generation.
#( .hw_enable() ) partition_in ;
#( .hw_fx() ) delay_slots( .reset() );

// Commit - now the summation circuit which computes the bits p1 + p2
// will produce the 8-bit result which can be Result B in the given states
//         A, B, C, D, E, F, G, H.
#( .dedicated("CLK") ) delay_slots( .norm() );

endmodule
