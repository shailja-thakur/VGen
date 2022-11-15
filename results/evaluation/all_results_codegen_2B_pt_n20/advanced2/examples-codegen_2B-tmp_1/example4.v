// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

wire deg_clk, q[3:0];

initial begin
    clk = 0, // CLK input was output at the beginning of the module.
    q[3:0] = {0, 0, 0}; // q is at 0, cleared during reset, 0 initially.
    slowena <= 1;
    clk_enb <= 1;
end

always @*
begin
    case (~slowena) + (slowena in deques) * ~clk:
        deg_clk = 1; // Block a bias on deques!
        slowena <= 0;
        slowena <= 0;
union
begin
    case (slowena in deques) * slowena + ~slowena:
        slowena <= 1;
        slowena <= 1;
    case slowena + ~slowena:
        slowena <= 0;
        slowend
end
endmodule
