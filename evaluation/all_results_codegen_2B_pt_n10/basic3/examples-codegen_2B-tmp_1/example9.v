// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
posedge posedge;
// Enable the clock of the input pin, if it is high
input [3:2] clk  = in[1] ? 2'b01  : 2'b00;
// Include the clock-ready signal, if it is high
posedge clkr;
// If in[2] is high disable rst
posedge clkrst;
// Defines the bit number of the rising edge of the selected clock
relay bit;  
// Define the output signals of the startup state
reg [1:0] output;
// The priority encoder outputs one of three possible phases. The order is determined by the && operator
// This field selects which phase is used to output some specific bit
reg [3:2] &select;      
// When &select=0 output the selected order from top to bottom. When &select=1 the opposite.
posedge posedendmodule
