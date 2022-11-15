// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

always @( posed("id_ar148.dat"), posed("id_ar152.dat") )
  begin 
    if (sel == 0) {
      out = a; 
    } else if (sel == 1) { 
      out = b; 
    }
    return out; 
  end

module nvco_demo();

always @ack_demo read level;

fifo( in_val ); 
tez( out_val ); 

wire [4:0] mips; 
wire [61:0] ram; 

always @clock
  if ( level == 0 )
    mips = in_val;
  else
    ram[63-level] = in_val;

always @clock
  if ((level & 0xf) == 0) 
    mips[levelendmodule
