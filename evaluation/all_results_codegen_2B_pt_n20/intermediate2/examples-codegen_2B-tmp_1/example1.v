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
initial begin
    if (reset) { d <= 1; } 
    else if (q == 12) { d <= 1; } 
    else { next_inst = 3-1; }
end

initial begin
    #print(d);
end
endmodule
