// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits

// to synchronize next_sload
always@(posedge clk or negedge reset)
begin
    if(!reset)
    begin
        out <= 8'b00000001;
    end
    else
    begin
        if(load)
	    out <= data;
        else if (load)	
	    out <= {1'b0,data};
    end
end
endmodule
