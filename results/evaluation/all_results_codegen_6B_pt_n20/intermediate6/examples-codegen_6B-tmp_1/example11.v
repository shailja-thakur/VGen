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
// assign the ram value at address addr to q, then reset clk
assign q = data;
always @(posedge clk) begin
    if (we) ram[addr] = data;
    else clk = 0;
end

// RAM buzzer DAC
module ram_buzzer #(module X)
    (parameter dac_fast=0,
     parameter dac_slow=0,
     parameter DAC_WIDTH=8,
     parameter COCKTAIL=1
    ) (
     input MCLK,
     input RST,
     input RSTn,
     input Y1,
     input Y2,
     output [DAC_WIDTH-1:0] data,
     output [DAC_WIDTH-1:0] dac
    );
    `

func main() {
	instr := split(script_endmodule
