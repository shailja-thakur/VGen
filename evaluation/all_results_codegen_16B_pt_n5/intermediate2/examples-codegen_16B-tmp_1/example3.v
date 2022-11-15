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
assign  q = (2==(reset==1))?q:((1==clk)?1:((q+1)%3)+1 );

// a clock cycle
always @(posedge clk) begin
    case(reset == 1)
        q <= 0;
        //q <= ??
    casez(reset == 0 && q == 1)
        q <= 0; 
        //q <= ??
    casez(clk == 1 && (q == 2 || q == 3))
        q <= q-1;
        //q <= q-1
end
// output pins

assign  d0 = "q == 1";
assign  d1 = "i == 2";
assign  d2 = "q";
assign  d3 = "i == 2 & q >= 2";

#pragma XPS_ASTOR_endmodule
