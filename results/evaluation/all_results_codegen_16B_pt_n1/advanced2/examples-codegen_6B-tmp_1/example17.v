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
    if (!reset) begin
        q <= 0;
    end
    else begin
        if (slowena) begin
            case
                when q == 0 => q <= 1;
                when q == 1 => q <= 9;
                when q == 2 => q <= 8;
                when q == 3 => q <= 7;
                when q == 4 => q <= 6;
                when q == 5 => q <= 5;
                when q == 6 => q <= 4;
                when q == 7 => q <= 3;
                when q == 8 => q <= 2;
                when q == 9 => q <= 1;
                when others => q <= 0;
            end
        end
    end
end

begin and requires((q == 1) or (q == 7) or (q == 9));
module count = count_slow(endmodule
