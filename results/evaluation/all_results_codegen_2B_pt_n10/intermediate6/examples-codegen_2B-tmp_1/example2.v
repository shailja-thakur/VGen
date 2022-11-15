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
always @(we,clk) begin
    if (clk==0) q=0;
    else
    begin
        ram[addr]=data;
        q=data;
    end
    rst=0;
end

// This is a pipe module
module pipe #(
    input [7:0] input_buf(0,1,2),
    output [6:0] output_buf(0:5,6:15)
) (
    input_state_buf0, input_state_buf1, input_state_buf2,
    output_buf, rx_buf0, rx_buf1, tx_buf,
    rst, clk, we,
    #i,
    nfa_rx_a, nfa_rx_b, nfa_rx_c, nfa_rx_d,
endmodule
