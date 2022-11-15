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
// Note that the order in which the statements are written is very important and this relies on the stated ranks. 
always @(posedge clk or posedge reset) begin
	if (reset) begin // on posedge reset then q <=1 
end else if (q == 12) begin // The edge case is that q is 12. The if (q == 12) then will not triger. 
	q<= 1; // The according rising edge edge of clk is not there yet, instead there is a nan. 
end else begin // if q is not 12 then begin
 	q = q+1; // The per-posedge-edge addition will trigger. 
end
 
endmodule
