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
// assign the ram value at address addr to q (this needs to be high when we is closed)


assign q=(we== 1'b1) ? ram[addr[ADDR_WIDTH-1:0]] : 8'hzz;
always @(posedge clk)begin
if(we== 1'b1)begin
ram[addr[ADDR_WIDTH-1:0]]=data;
end
end

endmodule
