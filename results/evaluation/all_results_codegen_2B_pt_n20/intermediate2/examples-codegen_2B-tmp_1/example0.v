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
always @(clk, reset) 
latched lt( 
    input clk, 
    input reset 
)
{  
    if ( (reset == '1')                        // reset case
        || (reset == 1 && clk == 1)
        || clk == 12
        )
        q = 1;                               // assign 1 to q on reset 
    else if(clk == 8) 
    { 
        q = 2;
		print(q); 
		delay(100);
    } 
    else if(clk == 9)
    { 
        q = 3;
        delay(100);
    } 
    else 
    { 
        q = q + 1;
		print(q); 
		delay(100);
    }        
}
// written as C:
// Q = 8 endmodule
