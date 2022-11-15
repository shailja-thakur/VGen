// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or negedge slowena) begin
    if (slowena) begin
        if (reset) begin
            reg <= 0;
        end else begin
            if (q != 9) begin
                reg[1] <= q + 1;
            end else begin
                reg <= 1;
            end else begin
                if (q == 9) begin
                    reg <= 1;
                end else begin
                    reg[2] <= q + 1;
                end else
					// Ooah. Dummy counter. Do nothing.
					q <= 0;
				end
            end
        end
    end
end
`


endmodule
