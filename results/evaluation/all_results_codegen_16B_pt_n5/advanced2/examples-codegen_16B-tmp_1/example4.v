// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// The input regulareb and both possitveb and negativeb inputs are latched in transiton if either the fasten or slowena are high. The synthetize function generates 2+2N-1 switch statements.
// The output latch is q.

always @(posedge clk or posedge reset) begin
    case(reset and clk)// reset
        q <= {0};
        others <= {7:0};
    case(slowena and ena)
        if ((q==9 and ena) 
               or (regulareb && !negatob && !positoveb && !negatoveb))
            q <= q+1;
    case(slowena and !ena)
        if (regulareb && !negatob && !positoveb && !negatoveb) {
            q == q + 1;
            if (end
endmodule
