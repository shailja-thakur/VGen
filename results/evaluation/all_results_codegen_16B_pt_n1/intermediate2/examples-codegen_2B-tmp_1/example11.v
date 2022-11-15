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

reset_n @(posedge clk) begin
    q <= 1;
end

// This is a counter that counts from 1 to 103 on reset
mod ex_main gate0 clk1, reset, [105:103] gate1

// This is a counter that counts from 1 to 1021, the last three digits
mod ex_main gate2 clk2, reset, [1024:1023] gate3

// The last (non-Reset) counter is always initialized as 0 to help the sequencer start up
con seq_rn @(posedge clk) begin
    if(clk ne reset)
        gate2 <= 0;
    else establish_timer:begin
        if(gate3_mt == 0) begin
            gate3_mt=30;
            gate3 <= 207374199; // initiate with a +ve constant value
        end    
        end
end
endmodule
