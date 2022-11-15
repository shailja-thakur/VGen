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
initial
begin
end // initial
always @(posedge clk)
begin
case(we)
0: // when we is low, store data in RAM
begin
// store data
end
1: // when we is high, read data from RAM 
begin
end
endcase
end
endmodule
