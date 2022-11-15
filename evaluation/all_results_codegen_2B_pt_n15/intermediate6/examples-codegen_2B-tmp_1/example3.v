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
fork
#[6][6][6] pr1 mod['1'] @ mem =
"""

# Set the clocks here
CLK_PERIOD = 10000000000000000000
dut = DUTSDK.WizDutyControl(clk_period=CLK_PERIOD, wiz_type='sdk')
endmodule
