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
assign ram[0][addr] = we;
assign ram[1][addr] = data[addr:1-ADDR_WIDTH:4-DATA_WIDTH+1];
assign q = DATA_WIDTH;
always @ (we, clk, we) begin
    q = (data[0] << 6)|(data[1] << 5)|(data[2] << 4)|(data[3] << 3)|(data[4] << 2)|(data[5] << 1)|data[6];
end
endmodule
