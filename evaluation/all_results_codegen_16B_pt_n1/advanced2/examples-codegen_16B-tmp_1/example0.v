// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
 
initial begin
    if (~reset)
        q <= {0, 0, 9};
    else{
        if (slowena)
            q <= (q - 1) * 10;
        else if (q % 10 == 9)
            q <= 9;
        else
            q <= q * 10;
    }
end

// On the negative edge of the clock:
// If the enable input high: reset q to 0.

always @(posedge clk or negedge slowena) begin
    if (slowena)
        q <= {0, 0, 9};
    else if (reset)
        q <= 0;
end
)assign_default_net

__def_greybox unimplemented "count_slow"
__def_greybox count_slow clk slowena reset {q};
endmodule
