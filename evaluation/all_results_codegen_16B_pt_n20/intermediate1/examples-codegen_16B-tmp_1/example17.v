// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
        
input a, b;
output carry_out, sum;
);






// Commissioning Controller
// This module will run the Commissioning registers.
// Its input is a vector of Programs from the Programmer.
// Those programs are mapped over and the total
// sum of their bytes is passed to the quartile encoder.
// When this port also registers a fixed number of outputs, the
// output at that index is the percent correct (pCT) for this
// Program.
module Commissioning_Controller(  
input  Programs,
output  pCT);
        
input  Programs;
output pCT;
);



 


// microcontrollers
// These will respond to clock cycles so that hardware related conditions
// that could not be controlled will be watched by the software.
module Microcontrollers(  
input toy,
output 
coin_out,endmodule
