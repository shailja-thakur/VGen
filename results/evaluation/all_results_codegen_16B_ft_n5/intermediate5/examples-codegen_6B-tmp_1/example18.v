// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset)
  process(load)
  begin
	  if (load) out[7] <= data[7];
	  else { out[7:] <<= amount[0] AND 7 + amount[1] << always; }
  end
end

module build_from_load(clk,reset,load,out);
input clk,reset;
input load;
output reg [7:0] out;

always @(posedge clk or negedge reset)
  begin
	if (load) out <= (LOAD_ADDRESS(load,SPEED_OP))[7:0];
produce
end

mul_div_load_reg
	mul(MUL)/div(MUL)/div_load_reg

/* Internal functions */

/* Parse a speed_endmodule
