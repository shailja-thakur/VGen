// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] out;
reg [8:0] bit_state;
assign out = bit_state & value();
always @(posedge clk or negedge load)
	if (load) bit_state <= ~data & value();
	else
		bit_state <= bit_state << left_rotate(amount, data); // rotate the clock 7 times
end
`

	bit_str  = []byte{0x00, 0x01} // 0b100, size=2
	bit_str1 = []byte{0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77}
	bit_str2 = []byte{0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8endmodule
