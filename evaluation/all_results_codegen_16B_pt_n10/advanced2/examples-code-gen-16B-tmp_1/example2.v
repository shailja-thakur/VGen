// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
    
    // slow up to count_max number of states based on enable
    always @ (posedge clk or posedge reset)
        if(reset) begin
            q &lt;= 0;
        end
        else
            if(q &lt;= 9) begin
                if(slowena) begin
                    q &lt;= q + 1;
                end
                else begin
                    q &lt;= q;
                end
            end
            else
                q &lt;= 0;
        
endmodule
