// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Otherwise, increment the output q.

// The clock signal takes 32,768 clocks to go low to the input and high to the output,
// so it takes 10 seconds to count the 1s.

// The slowena input takes the slow clock signal into account.

wire [3:0] q;

always @(posedge clk)
    if (slowena) {
        if (reset)
            q[3:0] = 0;
        else if (q>=3)
            q[3:0]++;
    } else {
        q[3:0] = q[3:0] + 1;
    }

    q[3:0] = q[3:0] % 10;
endmodule
