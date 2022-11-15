// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

always @(*)
void logic_output()
{
	out[sel] = a ? a & 0x3 : b & 0x3;
}

initial begin
  out <= 0x04;
end

// FSWorker -- implements logic output.
processor FSWorker = logic_output( ^();
end 

module nandmux( 
input [4:0] a, b, 
input [5:0] sel,
output [4:0] out,
proc_parameter csValid_0, 
proc_parameter res );

always @(*)
void logic_output()
{
	if (sel == 0) {
		out = a & ~b;
	}
	else {
		state.csValid_0 = true;
		if (sel == 1) {
			out = ~endmodule
