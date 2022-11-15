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

void main() 
{
    // Initialize the counter to 1 
    counter q1;
    
    // Generate the reset signal on the reset pin
    if (reset)
    {
        q1 = 1;
    }
    else
    {
        q1 = 0;
    }
    // Generate the clk signal on the clk pin
    while (clk)
    {
        // Increment q if the clock is high
        if (clk)
        {
            q1++;
        }
    }
    //q1 is now 12. Assign q to 1
    q1 = 1;
    //q1 is now 1. Set q to 1
    q1 = 1;
    //q1 is now 2. Increment q to 2
    q1 = 2;
    //q1 is now 3. Increendmodule
