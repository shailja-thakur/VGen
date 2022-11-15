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
always @(posedge clk) begin 
if(reset) 
q <= 4'b0000; 
else if(q == 4'b1011) 
q <= 4'b0000; 
else 
q <= q + 1'b1; 
end 
// always block that checks the value of the q register 
// and assigns the value to the final q output 
// when the value is 12
always @(q) begin
case(q) 
4'b0000: begin
end 
4'b0001: begin
end 
4'b0010: begin
end 
4'b0011: begin
end 
4'b0100: begin
end 
4'b0101: begin
end 
4'b0110: begin
end 
4'b0111: begin
end 
4'b1000: beginend
end
endmodule
