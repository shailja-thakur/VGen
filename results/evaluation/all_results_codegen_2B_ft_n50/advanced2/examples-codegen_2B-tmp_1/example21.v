// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk, posedge reset) begin
 if (reset)
 q <= 0;
 else if (slowena) begin
 if (q != 9)
 q <= q + 1;
 end
end

// There is a 50ns clock to resetq for 100ns pulse.

// Respectively, how long is the reset.
bit [19:0] d;

always @(posedge q[0]) begin
 d <= d + 1;
 end

reg d_reg;


always @(posedge q[0]) begin
 d_reg <= d[9];
 end

always @(posedge q[0]) begin

 if (d[9])
 d_reg <= d_reg;

 else begin
 // At each iteration, output appears until 9th clock.
 d_reg <= !d_reg;
 end
 end

//endmodule
