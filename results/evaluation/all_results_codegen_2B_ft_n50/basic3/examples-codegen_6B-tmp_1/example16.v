// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge rst)
  priority_encoder( in[2:0] ) 
      .assign(&pos[1:0],in[2:0]);
end

encoder_array( input 
	      [1:0] encoder_sel_RMSMmga, // Decoder A/B
	      output cpm_common.ca, // Counters A/B
	      output acc_data 
)
#end

edge_triggered begin
	non_reset.next			= 1'b0;
	idle_en.next			= 1'b0;
	or_state_sel.next			= 1'b0;
	idle_hwm_in.next			= 1'b0;
	idle_off.next			= 1'b0;
	inendmodule
