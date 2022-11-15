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
        if (addr < 2**ADDR_WIDTH-1) begin
            ram[addr + 1] <= data;
            if (addr < 2**ADDR_WIDTH-2) begin
                ram[addr + 2] <= data;
                if (addr < 2**ADDR_WIDTH-3) begin
                    ram[addr + 3] <= data;
                end
            end
        end
    end
end
`
endmodule
