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
// data in this bitcell will create a data dependency between addr and q
reg [DATA_WIDTH-1:0] realwe;
assign q = ram[addr];
assign we_bar = !realwe;
assign ram[addr] = we?data:8'bX;
always @(posedge clk )
begin
	realwe <= we;	
end
endmodule
