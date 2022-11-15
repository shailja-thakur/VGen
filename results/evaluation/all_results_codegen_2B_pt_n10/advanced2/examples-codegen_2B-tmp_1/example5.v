// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk) begin
    q <= (slowena || q == 9);
end


// Three clocks per 20100101, a 100Mhz inst before the watch-dog reset.
module counter(
    input clk,
    input ena,
    input rst,
    output reg [3:0] q);

always @(posedge clk) begin
    if (rst == 1) begin
        q <= 0;
    end

    #5 @(posedge clk) begin
        begin
            #7 @(posedge clk) begin
                #9 @(posedge clk) begin
                    if (ena == 1 and q != 9) begin
                        q += 1;
                    end
                #7 @(posedge clk)   begin
                    #9 @(posedge clk)       begin
                        if (enaend
end
end
end
end
end
end
endmodule
