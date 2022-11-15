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
// when we is alway high, read q back to data
always @(posedge clk) begin
//// always assert we if it is high, else deassert it
// we is always connected to a register that 
// has the latest write address, that is the one we just read from q
// when it is high, then you want to write 8000 addresses in a clock cycle
always @(posedge we) begin
 if (busy==1)
 // if the other memory stage is active, then gray out this channel of output
 $display("CAS");
 // when both memory stages idle, make sure bus is quiet
 action_expired<=0;
// deassert when it goes idle
// touch the memory registers
if (we==1) begin
 // hold current contents of output registers
tempdata <=data;
end
 // check first if it has anything significant inend
end
endmodule
