// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;

module mux4to1_tb();

reg in0,in1,in2,in3;
wire out;

mux4to1 mux(in0,in1,in2,in3,out);

initial
begin
in0=1'b0;
in1=1'b0;
in2=1'b0;
in3=1'b0;

#10
in0=1'b1;
in1=1'b0;
in2=1'b0;
in3=1'b0;

#10
in0=1'b0;
in1=1'b1;
in2=1'b0;
in3=1'b0;

#10
in0=1'b0;
in1=1end
endmodule
