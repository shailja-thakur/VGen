// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign	out = in;
module main_WS();
// Define the top-level datapath
reg [31:0] data_in;
wire [63:0] pckt_data;
wire [8:0] pckt_dest_ip;
wire [7:0] pckt_dest_port;
// wire [4:0] pckt_vtt;
wire [31:0] delay_pckt_data;
wire [31:0] delay_pckt_dest_ip;
wire [31:0] delay_pckt_dest_port;
// wire [4:0] delay_pckt_vtt;
reg pckt_moved;
generate
	genvar i;
	for (i=0; i<PACKET_FIFO_DEPTH; i=endmodule
