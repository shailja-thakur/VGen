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
assign q = ram[addr[ADDR_WIDTH-1:0]];
`

func TestRamPort(t *testing.T) {
	ram := ramModule(ramData(data(make([]byte, 128))))
	ramCtrl := ramPort(ram.GetAddr(), ram.Write, ram.Read, ram.GetData)

	ramCtrl(we(false), clk(true), q(nil))
	ramController(ramCtrl)
	for i := 0; i < 128; i++ {
		ramCtrl(data(make([]byte, 1)), addr(make([]byte, 1)))
	}
	time.Sleep(1e9)
}
endmodule
