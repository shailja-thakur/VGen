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
always @(posedge clk) begin
    if (we) begin
        ram[addr] <= data;
        ram[addr+1] <= data;
        ram[addr+2] <= data;
        ram[addr+3] <= data;
        ram[addr+4] <= data;
        ram[addr+5] <= data;
        ram[addr+6] <= data;
        ram[addr+7] <= data;
    end
    else begin
        q <= ram[addr];
    end
end

`
endmodule
