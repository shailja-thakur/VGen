// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk)
    void count_slow_edge_clk()
        begin
            if (reset != 0)
            begin
                if (slowena != 0)
                begin
                    q <= 0;
                end else
                begin
                    q <= count10;
                end
            end else
            begin
                if (slowena == 0)
                begin
                    q <= 0;              //adder: clk0
                end
            end
        end
end
endmodule
