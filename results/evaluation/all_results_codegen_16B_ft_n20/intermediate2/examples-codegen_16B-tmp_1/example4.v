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
always @ (posedge clk or posedge reset) begin
if(reset)
q = 0; 
else if(q == 12) 
q = 1; 
else begin 
q = q + 1; 
end 
end 
//output are assigned according to the following display statements
// ieq($q) displays 1, 3, 5, ... 
// q == 3 displays 3 ... 
endmodule
