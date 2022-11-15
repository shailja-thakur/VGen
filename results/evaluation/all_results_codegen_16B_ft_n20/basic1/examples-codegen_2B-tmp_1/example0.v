// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;
initial begin
#1 in = 1'b0;
#(5*5) in = 1'b1;
end
endmodule
