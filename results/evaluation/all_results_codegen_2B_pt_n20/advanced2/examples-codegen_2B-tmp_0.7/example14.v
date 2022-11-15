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
    void reset_q(
        .q(q[3:0])
    );

always @(posedge clk or posedge slowena)
    void enc(
        .q(q[3:0])
    );

always_comb 
    void enable(
        .ena(ena),
        .rst(rst),
        .q(q)
    );

always @(rst)
    void reset_ena(
        .ena(ena),
        .rst(rst),
        .q(q)
    );
//@end

//@begin
//@begin
//@end
endmodule
