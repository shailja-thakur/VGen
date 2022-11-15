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
assign q[0]=(~we&clk)? data[0] : ram[addr[3:0]];
// if we are writing, ram[addr] changes
// only the LSB of the address will change
// assign the ram value at address addr[3] to q[1]
assign q[1]=(~we&clk)? data[1] : ram[addr[3:0]][7:1];
// read
always@(posedge clk)
if(~clk) begin // wait for clk
ram[addr[7:4]] <= data; // initial value written
ram[addr[1:0]] <= q[0];
ram[addr[7:4]] <= q[1];
end
endmodule
