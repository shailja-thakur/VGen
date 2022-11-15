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
//--------------------------------------------------------------------------------
// I/O port list
//--------------------------------------------------------------------------------
// Inputs from higher level module(s)
//--------------------------------------------------------------------------------
always@(posedge clk) 
begin
case(reset)
1'b0: q <= 4'b0110; // on the reset cases, assign first upper-case letter to q
1'b1: q <= 4'b0;
1'bx: q <= 4'bxxxx; // any reset cases that are not explicitly handled above
endcase
end
endmodule
