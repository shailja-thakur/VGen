// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(line clk or reset) 
        if (reset) // on reset
        {
            out = 0
        }
        else //endif
        {
            //if load is not high, rotate the data value
            if (load == 1) 
            {
                out = data << amount;
            }
            //endif
            //else //output before left shift
            out = data >> amount;   
        } 
// end of instance          
endmodule
