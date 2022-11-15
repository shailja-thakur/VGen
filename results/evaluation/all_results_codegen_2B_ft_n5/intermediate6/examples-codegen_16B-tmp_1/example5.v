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
assign q = ram[addr];
// when we is high and clk is high, let write achieve its goal
assign ram[addr] = data;
// define a grey code counter to count and form the data
// for receive
always @ () begin
	if (we==1'b0 && clk == 1'b1 || we == 1'b0)
	begin
	assign data[DATA_WIDTH-1:DATA_WIDTH-2] =
	data[DATA_WIDTH-1:DATA_WIDTH-2] + 1'b1;
	assign zero = (data == 0);
	end
	else begin
	assign zero = 1'b0;
	end
end
usb_uart cv ( // Venus VPU
cd_clk, // internal CD-ROM clock
sft_done_endmodule
