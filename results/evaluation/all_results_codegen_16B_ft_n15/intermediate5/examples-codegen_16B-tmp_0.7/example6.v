// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk, posedge reset)
begin
	if(reset)
	begin
	if (load) begin
	 	out <= data;
	 end
	 else begin
	 case(amount)
	 0: out <= out;
	 1: out <= {data[0],data[7:1]};
	 2: out <= {data[1:0],data[7:2]};
	 3: out <= {data[2:0],data[7:3]};
	 4: out <= {data[3:0],data[7:4]};
	 5: out <= {data[4:0],data[7:5]};
	 6: out <= {data[5:0],data[7:6]};
	 7: out <= {data[6:0],data[7]};
	 endcase
end
end
endmodule
