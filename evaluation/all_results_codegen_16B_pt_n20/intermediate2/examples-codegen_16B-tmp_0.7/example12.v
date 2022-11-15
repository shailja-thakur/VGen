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
always @(posedge clk or posedge reset)
begin
    q <= (reset == 0) ? 1 : ( q == 12 ? 1 : q+1 );
end
// update q on the positive edge of the clock according to the following cases:
// on rising edge, if q is 1, or if q is 3, assign q to 2
// else, assign q to 1
always @(posedge clk)
begin
    q <= ( q == 1 || q == 3 ) ? 2 : 1;
end
endmodule
