// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// shift left and rotate the register out by amount bits

always @(posedge clk, posedge reset)
begin
if(reset)
 begin // adds white space and makes assignments for final result
// out is FF
out=8'b0;// clears the reg for final result

end
else if(load)
 begin

//out=data;// outputs data to final result
out<=data; // doesn't work
out={ out[2*amount+:8],out[7:8*amount] }; // shift and rotate left

end
//else out<=out;//updates at every clock cycle
end

endmodule
