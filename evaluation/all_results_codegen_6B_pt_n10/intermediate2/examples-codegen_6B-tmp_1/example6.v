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
measure wp4_mcu_counter( 
    input clk, 
    input reset, 
    output reg [3:0] q // << Fake output inserted into the block
); 

//------------------------------------------------------------------------------
#parameters clk = 1'b0,1'b1
#parameters reset = 1'b0,1'b1
module mod_4x4x4(
    input reset,
    input clk,
    output [4:0] out1,
    output [4:0] out2,
    output [4:0] out3,
    output [4:0] out4
);

//------------------------------------------------------------------------------
module mod_4x4x4_Clk(
    input clk,
    output [4:0] out1,
    output [4:0] out2,
    output [4:endmodule
