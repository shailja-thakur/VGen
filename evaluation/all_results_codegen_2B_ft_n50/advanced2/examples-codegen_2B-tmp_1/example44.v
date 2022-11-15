// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or posedge reset) begin
 if (reset) q <= 0;
 else if (!slowena) q <= 0;
 else if (q == 0) q <= 0;
 else if (q == 9) q <= 9;
 else q <= q + 1'b1;
 end 
 endmodule
module innerproduct_tb;
localparam N = 32;
reg [N-1:0] x, y;
wire [N-1:0] z;

innerproduct UUT(.x(x), .y(y), .z(z));

integer i,j;
initial begin 
 for (i=31; i>=0; i=i-1) begin
	for (j=31; j>=0; j=j-1) begin
	begin
	x <= i; y <= j;
end
end
end
endmodule
