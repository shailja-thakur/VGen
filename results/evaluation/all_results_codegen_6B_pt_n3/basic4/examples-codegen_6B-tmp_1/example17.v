// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always @(*) out <= a;
always @(*) out <= b;

`

dgtikExample1 = `
module mux(  
input sel, 
output [5:0] out )  //clk phase 
//injected sel is '1'
//injected '1' is 'a'
//out is bit-identical to 'a'
always @(*)
out <= 0 | a;

//seg index output seg index A to 5 */
//seq_declare test_a[];
//interrupt_declare
//interrupt [D];

//seq memory A=[101,100,101,101,101];
//if (READ(sel))
//    test_a  seq_async A;
//else
//    A[0] <= READ(sel);

module test("endmodule
