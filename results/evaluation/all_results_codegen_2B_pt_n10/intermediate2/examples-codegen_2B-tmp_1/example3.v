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
void main(void)
{
    initializations(); 
    counter clock_gen;

    clock_gen_edge event;
    #pragma vector=clock_gen0
    #pragma handler=clock_gen0
    #pragma module_stats enable=1
        event{rpcc.Clock <- 1};
    #pragma vector=clock_gen1
    #pragma handler=clock_gen1
    #pragma module_stats enable=1
        event{rpcc.Clock <- 1};
    #pragma vector=clock_gen2
    #pragma handler=clock_gen2
    #pragma module_stats enable=1
        event{rpcc.Clock <- 1};
    #pragma vector=clock_gen3
    #pragma handler=clock_gen3
    #endmodule
