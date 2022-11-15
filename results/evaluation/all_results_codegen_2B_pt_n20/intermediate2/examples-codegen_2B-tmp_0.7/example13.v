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
wire [4] q_count; 

initial begin
    q_count[0] = 0; q_count[1] = 0; q_count[2] = 0; 
    q_count[3] = 0; 
    q = q'b[2:0];
end

// add q_count[i] to q on the following clock edge
always @* qlx(clk, reset, q_count) begin 
    if (clk == 1)
        q = q'b[2:0]';
    else if (q == 12) 
        q = 1;
    else
        q = q + 1;
end
endmodule
