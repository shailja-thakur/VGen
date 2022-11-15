// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;
/*
module assign (input [15:0] in, output [3:0] out );
// assign out to in[3:0]
assign out = in[3:0];
module Subtract_1 (A,B,Out );
// Subtract in from in
Subtract_2 S(A,B,Result,Carry);
// results: [4,Carry from [1:0]]
// Carry from [0]
always @ ( * )
begin
if (A==B)
begin
begin
assign Result = 0;
assign Carry = 1;
assign Out = {A,A,A,A,A};
 end
else
if (A>B)
begin
assign Result = 1;
assign Carry = 0;
assign Out = {B-A};
 end
end
end
endmodule
