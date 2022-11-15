// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk) // slave split setup
begin
  if(load == 1){out = data;}
  else{out = bitswap<9>(out)<<amount;}
end

// left_shift(3) slave port

#pragma HLS interface ap_none register port=out

module slave_mem_read(out_dmem_ready,out_dmem_addr,out_dmem_data,bus_id);

input out_dmem_ready;
input [36:0] out_dmem_addr;
input [64:0] out_dmem_data;
output wire [36:0] out_dmem_data_result;

ram mem_ram core(clock, default_reset, mem_clk_phase, debug_mode, debug_enable, reset);

ram_multi_port slaveendmodule
