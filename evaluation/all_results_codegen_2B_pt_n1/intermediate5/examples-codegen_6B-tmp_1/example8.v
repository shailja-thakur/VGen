// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(*)
  begin
    if (load) out <= data;
    else
      begin
        if (amount > 0)
          out <<= amount;
        if (amount =< 7) out[7:amount-1] <= (data >> load) << (amount-1);
        end
      end
  end
endmodule
