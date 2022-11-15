// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always begin
    case(load)
    	if(reset == 0) begin
            	  out = data;
    	    end
    	else begin
            	  out = {data,0};
    	    end
    end
end
always begin
    for(#10000 clock = 100,reset = 1,amount = 2)
        left_rotate #10000
    end
end
endmodule
