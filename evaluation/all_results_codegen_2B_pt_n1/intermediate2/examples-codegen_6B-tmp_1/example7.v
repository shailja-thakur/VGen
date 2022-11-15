// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(posedge clk) 	q <= (   bin2bv(0,12)-1 == reset  ? 1'b1 : int( q == 12 ? (q-12)+1 : (q+1) ) 
); 
 

// My code for multithreading and parallel assignments
task siemens( 
    input clk,
    input rst_o,
    input rst_i,
    input vsyn
); 
        assert(vsyn == 0'b11 || vsyn == 0'b01); 
     
        assert(rst_i == 0'b00 || rst_i == 0'b11 || rst_i == 0'b01);
        assert(rst_o == 0'b00 || rst_o == 0'b11 || rst_o == 0'b01);
               endmodule
