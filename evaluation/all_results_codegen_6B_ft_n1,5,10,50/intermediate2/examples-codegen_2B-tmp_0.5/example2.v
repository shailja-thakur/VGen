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
wire [3:0] q; 

initial begin 
    q = 1;
    clk = 0;
    reset = 1;
end 

// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
// on clock, assign q to 1
// else, assign q to 0
wire [3:0] q; 

initial begin 
    q = 1;
    clk = 1;
    reset = 1;
end 

initial begin 
    q = 1;
    clk = 1;
    reset = 0;
end 

initial begin 
    q = 0;
    clk = 1;
    reset = 1;
end 

initial begin 
    qend
endmodule
