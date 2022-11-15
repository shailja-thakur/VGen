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
initial
begin
$display("&%h| & %h %h", we, data, addr);
// for loop to initialize ram contents
for (integer i=0;i<2**ADDR_WIDTH-1;i++)
ram[i]=8'b0;
end
always @(posedge clk)
ram[addr] = data;
assign q = ram[addr];
endmodule
