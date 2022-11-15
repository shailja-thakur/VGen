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
/*always @(posedge clk) begin
if (we)
ram[addr] <= data;
// if data is high, set value of address to data
assign q = ram[addr];
end*/
// from now on, data always comes from q
always @(posedge clk) begin
if (we)
ram[addr] <= data;
// assign the ram value at address addr to q derived from data
end
endmodule
