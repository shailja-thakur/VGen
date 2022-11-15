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
also need a macin_input last_input;// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// when we is high, read the value of q update the memory at address addr 
// assign the ram value at address addr to q
// ask for the queue of data at address addr, send it back to here for output if we is high.
 assign ram[addr] = we?data:q;
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 assign last_input = (ADDR_WIDTH==1)?data:{8{we}}; 
 always @(posedge clk)begin
 if (we)
 if(ADDR_WIDTH==1)//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 for (int i = 0; i < 8; i = i+1)begin
 ram[i] = last_input[i];
 end
 else//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
end
endmodule
