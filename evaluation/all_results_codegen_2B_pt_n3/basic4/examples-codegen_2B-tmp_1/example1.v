// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign nothing (a = b).

wire [4:0] in[3:0];

// Define the registers as inputs. Some may be outputs (later) along with mux temp registers.
wire ch_a [18:0];
wire ch_b [18:0];
register ch_a[18:0]=0;
register ch_b[18:0]=0;

reg [3:0] r_A[4:0] = 0;
reg [3:0] r_B[4:0] = 0;

reg out[4:0] = { 0, 0, 0, 0 };
mux mux_a, mux_b;

always@*
begin
    mux_a <= (a == 5) ? (5'b0) : (in[5:4]end
endmodule
