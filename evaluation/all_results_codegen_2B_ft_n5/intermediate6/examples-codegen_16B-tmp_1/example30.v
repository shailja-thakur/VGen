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
assign q=ram[addr];
// lightweight "always block" that is a `PRIMITIVE
// (i.e. no 'fork')
// of a non-blocking assignment. This null statement will
// generate an error if Xilinx synthesis tools are not
// properly configured. Note: it is not currently supported
// in Vivado
// null_statement ;
always @ (posedge clk) begin
if (we)
ram[addr]=data;
end
endmodule
