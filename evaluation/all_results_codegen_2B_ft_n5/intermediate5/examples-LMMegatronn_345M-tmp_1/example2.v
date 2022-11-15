// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
reg [7:0] shift_reg;
always@(posedge clk) begin
if(reset) 
	//if(shift_reg==7'd0)
		begin
			shift_reg<=data;
		end
else
if(load)
	shift_reg<=data;
end

// take control stuff a signals associated with unit 3(rotate)
always@(shift_reg or data or shift_reg)
begin
	case(shift_reg)
		3'd0:
			begin 
				out=data[7]^shift_reg[7];
				out_valid=~load & (data[7]&shift_reg[7]);
			end
		3'd1:
			begin 
				out=data[7]^end
end
endmodule
