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
always @(posedge clk) begin
    if (we)
    q <= ram[addr];
end

// use a 16 x 16 mirrored palette to convert the input colors
reg["PALETTE"]=16'd5100;
reg["Q"]=16'd2152;
reg["R"]=16'd0202;
reg["S"]=16'd1515;
reg["S-PALETTE"]=16'd5108;
reg["S-Q"]=16'd5016;
reg["S-R"]=16'd1616;
reg["T"]=16'd4654;
reg["T-PALETTE"]=16'd2156;
reg["T-Q"]=16'd5118;
reg["T-R"]=16'd0528;
reg["S0"]=16'd0619;
reg["S0endmodule
