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
// note that incrementing q with a register can be done with:
// q = q + 1 
// The code in this example uses an inline function to do this.
inline void update_q( void )
{ 
    q = ( reset == 0 ) ? 1 : ( q == 12 ) ? 1 : q + 1; 
}
// update q whenever clk changes from low to high
always @(posedge clk) begin
    update_q();
end
endmodule
