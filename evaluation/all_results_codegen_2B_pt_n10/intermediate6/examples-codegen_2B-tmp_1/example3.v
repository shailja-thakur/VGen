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
case we begin
    test we'b_rst, we[-1:0]
        *q'b_memw [addr:0] @ram[addr:1];
    endcase
    //write addr as a binary number
    //1bstub wrr [addr:0] ddt ;
    assign addr $0bddt>>0;
x case
    negedge clk
   begin
        writemramaddr addr;
        //assign $ram[addr:0] ddt;
        assign $ram[addr:0] ddt;
         //if ibrd then
         //       test we'b_reset, we[7:0]
         //           *q'b_memrd [addr:1] @ram[addr:7];
         //wave      ;
         //       end else
    endcase
endmodule
