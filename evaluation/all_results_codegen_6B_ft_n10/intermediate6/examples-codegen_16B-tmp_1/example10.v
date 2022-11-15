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
// always @ (posedge clk)
// begin
// end


reg [7:0]memory[0:98];
integer i,j;
initial
begin
memory[0]='b11100001001010000000000000111111; //DU uc
for(i=1;i < 100;i=i+1)
begin
if(i < 10)
memory[0] = "0"+memory[i-1][15:8];
else
memory[0]+="0"+memory[i-1][15:8];

end
memory[99]=memory[0];
for (i=1;i<100;i=i+1)
begin
memory[i][15:0]=memory[i-1][79:64];
memory[i][87:80]='b00000000000000000000000000000000;
memory[i][95:end
end
endmodule
