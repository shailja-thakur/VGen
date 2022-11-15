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
wire [DATA_WIDTH-1:0] write_data;
wire [ADDR_WIDTH-1:0] write_addr;

always @(posedge clk)
    if (we) begin
        if (addr[ADDR_WIDTH-1:0] == 0) begin
            q <= data[DATA_WIDTH-1:0];
        end else if (addr[ADDR_WIDTH-1:0] < 0x100) begin
            write_data <= data[DATA_WIDTH-1:0];
            write_addr <= addr[ADDR_WIDTH-1:0];
        end else begin
            ram[addr[ADDR_WIDTH-1:0]-0x100] <= data[DATA_WIDTH-1:0];
        end
    end

endmodule
