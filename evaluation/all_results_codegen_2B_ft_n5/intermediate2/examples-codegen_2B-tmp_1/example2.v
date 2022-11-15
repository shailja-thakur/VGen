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
reg [3:0] old_q;
reg q_is_one;

always @(posedge clk)
begin
 if (reset)
begin
 old_q = 0;
 q_is_one = 1'b0;
 q = q‘ /* remove 'id=' inside "(" and ")", "\'"; */;
 end
// checking if q is <= 12
else if ( q <= 12)
begin
 old_q = q;
 q_is_one = 1;
 q = q + 1’b1; 
 end
// q is 12
else
begin
 old_q = q;
 q_is_one = 1;
 q = 4'b1;
 end
end
always @(posedge clk)
begin
 if (!q_is_one) // saving 4 quaterials
 quoicate_out = 4'bend
endmodule
