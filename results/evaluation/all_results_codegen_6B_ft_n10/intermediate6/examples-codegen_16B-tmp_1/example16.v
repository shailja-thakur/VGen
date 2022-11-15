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
// assign the ram value at address addr to q:
assign q = ram[addr];
// read from addr to q from within this always block
// set all the ram values to zero:
initial begin
	$readmemh("ram.txt", ram); // should check that init.txt is in current directory
end
 // when the write goes high, the data in the input becomes the data
 // at address addr, otherwise, the data remains the same.
always @(posedge clk)
begin
	if (we == 1'b1)
	begin
	ram[addr] = data;
	end
end
endmodule
