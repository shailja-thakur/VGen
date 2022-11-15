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
wire reset_clk; 
inst struct rst {
    input reset;
    reg [3:0] q;
    reg reset_clk; 
}; 

rst reset_clock_0; 
rst reset_clock_4; 
rst reset_clock_9; 
rst reset_clock_14; 

// The clock prevents common fault bit 0 (parent clock) during idle
internal void
initialize_device() 
{ 
    initial_clock = 1; 
    initial_reset = 1; 
    for(int n=0;n<14;n++) reset_clk = n; 
    set_genitive_assert_low(); 
    wait10us(); 
} 


task(counter) // task control function 
{ 
    while(true) 
    { 
        endmodule
