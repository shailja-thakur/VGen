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
    if (we)
        ram[int(addr)]<=data;
    q<=ram[int(addr)];
end

always @(posedge clk)
    if (rst) begin
    end


    // let RAM work and debug
function [7:0] maincpu();
    initial begin
        ram[$(addr)]<=data;
        q<=ram[$(addr)];
    end
end

// find out what maincpu does!
$display(maincpu);
endmodule
