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
// assign the ram value at address addr to q[n]
assign q[~mem(~addr)] = mem(~addr) {
  NOT ([$Ram_W [~~we {0x01}: q[0]]] [!$Ram_W [~~we mem(~addr zext $~we) mem(~addr_next)]]);
  NOT ([$Ram_W [~~we {0x00}: mem(~addr_next)] [~we_1; q[0]]]);
} else_rst [wr_to ${[not we; zext w]}; data_to_w; clk_to ${~clk; Ram_W [0:addr 色直]} we_to_data; we_to_memm]
`;

export default Program;endmodule
