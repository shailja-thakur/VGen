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
	//for the posedge clk, if the we is 1, then we write the data into the ram0
	begin
	ram[addr] = data;
	end
	else
	//if the we is 0, then the data at 0 address is lost
	begin
	ram[addr] =ram[addr][7:0];
	//only because the ram is defined at 0; 
	//that means we have to take the last 8 data; otherwise the sum of the previous 8 data and 0 (0)
	lb <= lb + ram[addr-1];
	fsm = 1;
	end
	
fsm = 2;
assign q[1] =
ram[addr];
assign q[2] = 
ram[addr];
assign q[3] = end
endmodule
