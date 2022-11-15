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
assign ram[addr] = q;

// FLAG_PHI_WRITE_DATA = (clk == '1');
reg [7:0] flag_ph
=    ph ^ rs ^ flag_phi_write_data; // bit 7 and 0 are implicitly adress
    // write rx (PHI Rev 1) or ry (PHI Rev 2)
rom [ram_sig_addr_rx_PHI] = refram[flag_ph]; // using the flag_ph, we can removed the leiks fault prfiling of ram case
endmodule
