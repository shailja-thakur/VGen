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
    if (slowena && !reset) {
        q[3:0] = q[3:0] + 1;
    }
end

// On the negative edge of the clock:
// increment the output q unless it is 0.
always @(negedge clk) begin
    if (reset && (!slowena) && q[3:0] == 0) {
        q[3:0] = 9;
    }
end
);


int main() {
    count_slow clk(clk, reset);

    for (int i = 0; i < 10; i++) {
        wait(1);
        clk.write(10-i);
    }
    wait(1);
    clk.write(10);

    return 0;
}
endmodule
