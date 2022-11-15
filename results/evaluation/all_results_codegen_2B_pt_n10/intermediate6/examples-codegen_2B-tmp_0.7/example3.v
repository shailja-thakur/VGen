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
wire [DATA_WIDTH-1:0] w;
// When we is low, read q from ram at address addr
wire [DATA_WIDTH-1:0] r;
always @(posedge clk) begin
    if (we) begin
        r <= ram[addr];
    end else begin
        w <= data;
    end
end
endmodule
