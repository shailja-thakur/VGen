// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge load)
  out <= (load == 1)? (data << amount) : (out >> amount) & data;

// MOSI to DOUT
// load HIGH to DOUT when load is high
always @(posedge clk or negedge load)
  DOUT <= load;

// RESET
always @(posedge reset or negedge clk)
  state <= 'H';

`;
const index_module = `
module index(clk,reset,load,out);
  input clk,reset;
  input load;
  output reg [7:0] out;

  always @(posedge clk or negedge load)
    out <= load;

  always @(posedge clk or negedge load)
    state <= 'H';

  always @(posedendmodule
