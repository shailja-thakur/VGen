// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = { 1'b0, 2'b0, 3'b0, 4'b0, 5'b0, 6'b0, 7'b0, 8'b0, 9'b0, 10'b0, 11'b0, 12'b0, 13'b0, 14'b0, 15'b0, 16'b0, 17'b0, 18'b0, 19'b0, 20'b0, 21'b0, 22'b0, 23'b0, 24'b0, 25'b0, 26'b0, 27'b0, 28'b0, 29'b0, 30'b0, 31'b0, 32'b0, 33'b0, 34'b0, 35'b0, 36'b0, 37'b0, 38'b0, 39'b0,endmodule
