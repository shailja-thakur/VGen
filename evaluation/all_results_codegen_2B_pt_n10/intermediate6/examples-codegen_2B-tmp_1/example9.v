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
always @(we, clk)
begin
    if (clk == 0)
        {
        q <= RAM;
        }
    else if ((we)&&(addr[1] == 0))
        {
        ram[addr[0]] <= data;
        }
combinational ram0_reg, ram1_reg;
combinational ram_cycle
ram0_reg <= (clk==0);
ram_cycle <= ram0_reg and ram1_reg <= (we==1);
ram1_reg <= ram_cycle and (clk==1);
// assume the cycle is at least one
always_comb ram0[38:38] @(11111111) ram0_reg;

end
endmodule
