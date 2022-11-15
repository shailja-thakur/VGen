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
always @(posedge clk or negedge we)
  q <= ram[addr];
// reset
reset
end
"""

    def test_label_semantics(self):

        inst = SC.compile_to_exe("+" + self.ram_inst)

        self.assertEqual(list(inst), ["s2", "r", "magic", "s10"])

        # assign to memory
        addr = "reg32[5] {} x + reg32[6] ;".format(self.ram_inst)
        data = "reg32[7:0] reg32[18:8] ;"
        inst = SC.compile_to_exe("{}={}".format(addr, data))

        # reading byte from RAM takes one cycle
        self.assertEqual(list(inst), ["magic", "s10"]endmodule
