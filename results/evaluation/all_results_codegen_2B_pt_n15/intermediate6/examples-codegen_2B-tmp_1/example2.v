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
wire val = we & (!we) & addr[7]; //(we&*)&addr[7] //addr[REG7_DATA_WIDTH-1:7]
reg ramOUT = (data is not val) and ram[2**ADDR_WIDTH-1:0];
reg valDIS = we; //(we is high)
always @(not(we))
{
    ram[2**ADDR_WIDTH-1-valDIS] = data;
}

assign val = valDIS when (addr[REG8_WE -1] is WE) else valDIS
// set value stored in ram[IDX_ADDR] to the correct ram INPUT_IDX
wire tmp = ramINVFT[(IDX_READ+IDX_WRITE+IDX_INT+IDX_IN_INV)>>2][DATA_endmodule
