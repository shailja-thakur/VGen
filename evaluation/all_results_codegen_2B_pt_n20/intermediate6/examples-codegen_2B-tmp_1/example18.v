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
assign q <- we ? (~clk && we == 1) : (~clk || we == 1);

wire [7:0] ack;
// if dout is high, clr ack
assign ack <- we ? 0 : 1;
// wait for status
reg [7:0] s;
assign s <- addr;
do s;
  ram[s] <= data;
  wait clk;
  ack <= ~ack;
  s <= s+1;
end do;
while rd;

endmodule
