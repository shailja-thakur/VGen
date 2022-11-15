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
// this functionality is provided by the two if statements below,
// followed by a case statement to dispatch based on the value at address addr
int last_addr;
if (we) {
    // This is a combined clk and a ready latch
    case (addr == 0):
    q <= ram[last_addr];
    if(!last_addr)
        last_addr = ADDR_WIDTH - 1;
    else
        last_addr--;
                
} else {
    // This is a clk only
    case (addr == last_addr):
           if(last_addr)
           last_addr--;
           
}
endmodule
