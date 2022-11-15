// This is a RAM module
module ram #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
) (
    input [DATA_WIDTH-1:0] data,
    input [ADDR_WIDTH-1:0] addr,
    input we, clk,
    output [7:0] q
);
reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];
// when we is high, write data to ram at address addr
// assign the ram value at address addr to q
assign bval = (0 <= addr && ADDR_WIDTH <= addr) ? 1 : 0;
assign q = ram[addr];
reg [7:0] preambleq_temp = 0;

// when addr reaches overflow, the data becomes 4 new valid values
// goes Q after preamble, before first data
always@( posedge clk )
begin
	if(bval) begin
	case(preambleq_temp)
	2:
	ram[0] <= 8'b10100000;
	3:
	ram[1] <= 8'b10100000;
	4:
	ram[2] <= 8'b10100000;
	5:
	ram[3] <= 8'b10100000;
	6:
	ram[4] <= 8'b10100000;
	7:
	ram[end
end
endmodule
