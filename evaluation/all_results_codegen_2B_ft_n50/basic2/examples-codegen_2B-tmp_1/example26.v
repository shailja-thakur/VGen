// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

//modl k_and( 
// .a(a), 
// .b(b), 
// .y(out) 
//);
 //assign out = a & b;
 
 endmodule
module test_mux_declare();
reg [3:0] q0;
reg [3:0] q1;
reg [3:0] d;
reg [1:0] sel;

wire [3:0] y;

//create the mux
mux_2x1 mux (.y(y),
.d(d),
.sel(sel),
.q0(q0),
.q1(q1));

//declare main module
initial
begin
$dumpfile("TimingDiagram.vcd");
$dumpvars();
$display("\n\t---------- Mendmodule
