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
 case (reset)
 1'b1: q <= 4'd1;
 // counts from 1 to 12 if reset=1
 default: begin
 q <= (q == 4'd12)?4'd1:q+4'd1;
 end
 endcase
end
endmodule
