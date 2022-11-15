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
always @ ( clk, reset ) 
begin:
    if ( reset == 1'b1 )
    {
        q = 1;
        wait;
    }
    else if ( q == 12 )
    {
        q = 1;
        wait;
    }
    else
    {
        q = q + 1;
        wait;
    }
    end;
endmodule