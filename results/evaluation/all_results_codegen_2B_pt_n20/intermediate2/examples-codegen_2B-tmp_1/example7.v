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
interrupt[interface]= posedge clk
initial begin
    if( reset == 1 )
        q[0..0] = 1;
    else if( q[2:1] = 12 )
        q[2..0] = 1;
    else
        q[2..0] = q[2..0] + 1; 
end
byte [7:0] get_byte
var counter_instantiation 
// input clk pin
if( ~clk == output 1 )
    counter_instantiation.{ q[3:0] } <= clk;
// reset pin
if( wait( ( clk == output 1 ), RESET ) )
    counter_instantiation.{ q[3:0] } <= reset;
// on the clock match
output reg clk 
if( dot_product( [0;7] ) == 0endmodule
