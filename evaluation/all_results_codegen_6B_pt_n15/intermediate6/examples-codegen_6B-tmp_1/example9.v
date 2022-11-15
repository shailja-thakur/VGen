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
// assign the ram value at address addr to q according to bit parity of data
always@(posedge clk)
    if (we) begin
        ram_write(addr, data);
        if (bit_parity(data)) begin
            q <= ~data;
        end;
    end;
');


loadConfig(config);

def setRamBit(state, addr):
    return ltl_to_vhdl(vhdl_defs.setRamBit(state, addr))

def getStartAdvance():
    return ltl_to_vhdl(vhdl_defs.getStartAdvance())
endmodule
