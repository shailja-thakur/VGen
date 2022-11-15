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
always @(posedge clk)
begin
 case ({reset,q})
 2'b00: q <= 1;
 2'b01: q <= 12;
 2'b10: if (q == 4'h12) q <= 1;
 else q <= q + 1;
 endcase
end
endmodule
