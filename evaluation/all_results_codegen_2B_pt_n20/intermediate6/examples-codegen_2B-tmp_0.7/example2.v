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
always @ (we, clk)
begin
    if (we) begin
        reg [DATA_WIDTH-1:0] t = ram[addr];
        ram[addr] = t;
        q = t;
    end
end

always @ (clk)
begin
    if (clk == 1) begin
        ram[addr] = data;
    end
end

always @ (clk)
begin
    if (clk == 1) begin
        if (we) begin
            q = ram[addr];
        end
    end
end

reg [ADDR_WIDTH-1:0] data_out;
reg [DATA_WIDTH-1:0] data_in;
reg [ADDR_WIDTH-1:0] addr_in;

always @ (clk)
begin
end
endmodule
