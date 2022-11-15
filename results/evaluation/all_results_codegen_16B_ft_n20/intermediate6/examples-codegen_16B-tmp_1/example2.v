// This is a ram module
module ram
(
input [7:0] data,
input [5:0] addr,
input we, clk,
output [7:0] q
);
reg [7:0] ram[63:0];
// when we is high, write data to ram at address addr
// assign the ram value at address addr to q
assign q = (we & addr[0]) ? data : ram[addr];
initial
begin
//write data at address 0..7, 9-15
`ifdef BS
assign ram[6'h0] = 8'd0;
assign ram[6'h1] = 8'd1;
assign ram[6'h2] = 8'd2;
assign ram[6'h2] = 8'd3;
assign ram[6'h3] = 8'd4;
assign ram[6'h4] = 8'd5;
assign ram[6'h5] = 8'd6;
assign ram[6'h5] = 8'd7;
assign ram[6'h6] = 8'd8;
assign ram[6'h7] = 8'd9;
assign ram[6'h8]end
endmodule
