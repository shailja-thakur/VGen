// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

wire [4:0] data;

// When sel=0, data is assigned to data0. 
// When sel=1, data is assigned to data1.
wire [4:0] data0;
wire [4:0] data1;

always @( posedge clk )
if ( sel == 0 )
{
  data0 = a[2:0];
}
else
{
  data0 = b[2:0];
}

always @( posedge clk )
if ( sel == 1 )
{
  data1 = a[2:0];
}
else
{
  data1 = b[2:0];
}

// Logic for out0 and out1 is same as the above logic.
reg [4:0] out0;
reg [4:0] out1;endmodule
