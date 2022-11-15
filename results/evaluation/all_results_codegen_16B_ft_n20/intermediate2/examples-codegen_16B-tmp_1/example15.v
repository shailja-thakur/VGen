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
 if(reset) 
 q <= 4'd1; // assume the user will easily change this back to 0 once the circuit has stabilized
 else if(q == 12) 
 q <= 4'd1; // prevent overflow
 else 
 q <= q + 4'd1;
end
endmodule
