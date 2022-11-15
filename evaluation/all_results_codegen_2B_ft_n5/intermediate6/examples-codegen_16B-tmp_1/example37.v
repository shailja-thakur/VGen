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
assign q = ram[addr];
generate
always @(posedge clk) begin
if (we & !clr)
ram[addr] <= data;
end
endgenerate
// Because a RAM is not guaranteed to have aligned access/write
// assume that one can always read. Here in the case of 'always read <ram></ram>'
// this is true. In the case of procedural continuous assignment to q, this may not
// be the case, but in general, a read does what it says.
assign rd = !clr;
// this must be true, else consistent RAM module cann't function
// no function if ww==0
assign ww = we+clr;
// read-back function
assign qa = data;
// always keep the write side and read side in synch
always @(posedge clk) begin
endmodule
