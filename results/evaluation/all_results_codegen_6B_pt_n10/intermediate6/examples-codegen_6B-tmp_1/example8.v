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
always @ (clk or !we) begin
    ram_latest = ram[addr];
    ram[addr] = data;
    q = ram_latest @ 0xff;
end
`;
const tr = simpleTransmon;
const trNet = tr(1);
cpu = new CPUController({ clk: 1 });
const ram = RAM.fromMemory(seedRom);
const top = new Sysmem({ sam:ram });

describe('seed emulator', function () {
    beforeEach(function () {
        top.reset();
    });

    it('should flash RAM', function () {
        let mem = new SOS({ sam:RAM });
        let algo = new Seed({ mem });
        algo.execute();       
    });
});
endmodule
