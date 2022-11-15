// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
begin
    if (load == 1'b1) begin
        out <= vreg(data,amount);    
	end
	if (reset == 1'b0) begin
		out <= vreg(0b0,0b11001'b1011); 
	end
end

@states { in_load,  one,  two,  out_one, out_two, out_three};

always @(posedge clk or posedge reset) begin
    if (reset == 1'b0) begin
        in_load <= 1',load;
    end
    else if (load == 1'b1) begin
        out_three <= in_load;
    else if (one == 1'b1) begin
        if (in_load != 1'b0) begin
		  out_two <= in_load;
        // else timingend
end
end
end
endmodule
