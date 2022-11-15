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
always 
    if ( reset == in ) {
        q <= #1;
    } else begin
        // q is NULL at the off state, interms of the reset condition
        if ( q ) begin
            // the 10's stands for the 10 least significant bits in the binary representation of q
            q <= #1000'z11;
        end else begin
            // q is greater than 12 at the off state, interms of the reset condition
            if ( q[3:0] == #12'b11 ) {
                q <= #1000'z11;
            } else {
                // add 1 to q
                q <= q + 1;
            }
        end
    end 
endmodule
