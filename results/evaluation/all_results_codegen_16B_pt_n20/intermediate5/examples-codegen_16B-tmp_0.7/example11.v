// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset) begin
  case(load)
    if (reset) begin
      out <= data;
    end
    else begin
      if (load) begin
        out <= data;
      end
      else begin
        out <= (data << amount) | (out >> (8-amount));
      end
  end
end

// load the data to be rotated into out
// if load is high, load data into out
// otherwise rotate the data to be loaded into out
assign out = load ? data : (data << amount) | (out >> (8-amount));
// the counter
reg count;
// the output register
reg out_reg;
// the number of bits to shift
reg shift_amount;
// the number of bits to rotate
reg rotate_amount;
// the number of bits to load
reg load_endmodule
