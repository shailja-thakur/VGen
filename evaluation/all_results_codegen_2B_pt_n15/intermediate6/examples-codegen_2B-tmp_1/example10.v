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
// assign the ram value at address addr to q.
always @*
begin
    if (clk && !we) {
        q <= ram[addr];
    } else if (we && !clk) {
        ram[addr] <= data;
    }
end
// input: data
// output: The last four bits of data are the total 6
#ulia ;0x0f : 8 :: nets > 0 (add < 1)
NET output_q = 0b1000000000000;

always @(*) ram@DITERR()
begin
    if (clk)
        busy <= '1';
end
END

// We assume there are four bytes in $RAM receiving two inputs.
//# 3 outports
RAMIN (q)ram RIGHTBOUNDIA (0) WIDTH (24. SWpct25_(0) CEpct6_(0) WPen_(9)
            PSendmodule
