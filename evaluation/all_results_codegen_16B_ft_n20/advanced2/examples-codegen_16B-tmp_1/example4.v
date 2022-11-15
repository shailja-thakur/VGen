// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
assign ena = slowena & (q != 4'b1001);
always @(posedge clk or posedge reset) begin
 case (q)
 4'b0000: begin
// if the reset input is high reset the output to 0. Otherwise, only the output 
// if the output q hits the 32'hFFFFFFFF value to 4096.
 if (reset) begin
 q <= 4'b0000; 
 end else begin
// if we haven't hit q = 4095 yet, do the increments and modulus computation.
 if (ena) begin 
 q <= q + 4'd1;
 end else begin
 q <= 4'b0000;
 end
 if (q >= 4'b1000) begin
 q <= 4'b0000;
 end
 // q is no longer used, instead, we use a wire net of q, but wire q 
 // outside the always block as partend
end
end
endmodule
