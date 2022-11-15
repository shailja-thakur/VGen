// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
assign out = (sel)?b:a;
 endmodule
`timescale 1ns/100ps // `timescale time_unit/time_precision
module fsm( 
input clock, reset,
output reg out );
reg [1:0] sel;
reg [2:0] state;
initial begin
state=3'b000;
out=0;
end
always @(posedge clock)
begin
if(reset)
begin
state=0;
end
else
begin
case(state)
3'b000: begin 
out=0;
if(sel==0)
begin
state=3'b001;
end
end
3'b001: begin
out=1;
if(sel==0)
begin
state=3'b011;
end
end
3'b011: begin
out=end
end
endmodule
