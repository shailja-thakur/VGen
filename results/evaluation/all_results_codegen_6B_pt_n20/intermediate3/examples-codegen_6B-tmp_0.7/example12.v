// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
always @(posedge clk)
  r_next = r_reg;
  r_reg = r_next ^ xor(r_next[1:4], feedback_value);
  q <= r_reg;
end

// Data for message to be processed
#ifdef CONFIG_XPS_DEMO_XPS_TEST_VECTOR_DATA
#include "xps_demo_xps_test_vector_data.h"
#endif

// Main function
int main()
{
    // instantiate LFSR
    lfsr lfsr_inst;
    
    // reset the LFSR
    lfsr_inst.reset = 1;
    
    // process 5 bit message
    lfsr_inst.process(5, &xps_demo_xps_test_vector_data[0]);
}
endmodule
