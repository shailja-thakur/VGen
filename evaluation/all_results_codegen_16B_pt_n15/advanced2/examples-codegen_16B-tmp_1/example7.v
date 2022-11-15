// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
    always @ (posedge clk or ~reset) begin
        if (reset) begin
            q <= 0;
        end else begin
            if (slowena) begin
                if (q != 9) begin
                    q <= q + 1;
                    if (q == 9 and slowena) begin
                        next_state wait;
                        wait <= 1;
                        while (wait) begin
                        | | | | | | | | | | | | |             // Example representation of bit emitters. A 10 dyn signal grouped 2-per-cou.
==============            ========   ================   ====================    Points to
     S0         _______        _______________         _______________        Points to
    |_|_|_|_  |   |   |      |label |   |   |      |label |   |   |      |label |
   |   |   |  |   |  end
end
end
end
end
end
endmodule
