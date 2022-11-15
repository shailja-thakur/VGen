// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// When forbidden to be above 9, next input edge' removing ena can be smaller than q than"? 
initial begin
$watch("count",q,"clk",clk);
end
always @(posedge clk or posedge reset) begin
if(~reset)
q<={4'b0},
 q=4'd0;
else begin
 if(~slowena) begin
 q<=q;
 end
 if(slowena && q<=9) begin
 q<=q+1;
 end
 end
 end
endmodule
