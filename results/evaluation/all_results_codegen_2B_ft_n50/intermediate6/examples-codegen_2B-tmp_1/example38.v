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
// assign the ram value at address addr to q[7:0]
always @(posedge clk or posedge reset)
if (reset)
 q <= 8'b0;
 else
 if (we) begin
 ram[addr] <= data;
 q <= data;
 end
 // for each reading of the output, check if it is high, if is yes, then output value
 // at address addr from ram[addr]
 always @(posedge clk)
 if (reset)
 q <= 8'b0;
 else
 if (q == 8'b1) begin
 $display("Get high on q when it is a high impedance! Your robot probably thinks global variable thingy has been grounded");
 end
endmodule
