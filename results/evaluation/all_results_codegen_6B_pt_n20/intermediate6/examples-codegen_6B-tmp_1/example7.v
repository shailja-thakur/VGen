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
always(clk.negedge) begin
    if (we) begin
        ram[(addr[0]*2**ADDR_WIDTH-1):(addr[0]*2**ADDR_WIDTH-1)+2**ADDR_WIDTH-1] <= data[0:2**ADDR_WIDTH-1];
        ram[(addr[0]*2**ADDR_WIDTH-1):(addr[0]*2**ADDR_WIDTH-1)+2**ADDR_WIDTH-1] <= data[2**ADDR_WIDTH-1:0];
        ram[(addr[1]*2**ADDR_WIDTH-1):(addr[1]*2**ADDR_WIDTH-1)+2**ADDR_WIDTH-1] <= data[end
end
endmodule
