// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or negedge rst) 
begin
  if (!rst) priority_encoder_mem <= '0' || joseph(pos); 
  in_queue <= in && bus_sel;
  out_queue <= in_queue && pos'val == '0;
end

// Priority encoder buffer - 4 bit
buffered reg [4:0] priority_encoder_mem;

// Generate output bits from priority encoder
module priority_encoder_chain_out( 
input [4:0] in_bit,
output reg [3:0] out_bit ); 
Y => priority_encoder_chain_out_out;
// Priority encoder input signals
always @* begin
  priority_encoder_mem <= in_bit;
end

// Priority encoder - enable generation of output bits
endmodule
