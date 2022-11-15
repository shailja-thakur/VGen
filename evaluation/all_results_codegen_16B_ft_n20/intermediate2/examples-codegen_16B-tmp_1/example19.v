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
always @(q or posedge clk) 
begin 
// if Reset, q = 0. If q = 12, q = 0. If not, q = q + 1
case(q) 
1'b0: q = 1'b1 ; 
1'b1: if(q == 4'b1110) q = 1'b0; 
else q = q + 1;
endcase
end
endmodule
