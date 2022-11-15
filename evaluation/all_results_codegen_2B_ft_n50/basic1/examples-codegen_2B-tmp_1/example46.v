// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
reg out;
always @(in) begin
out <= in;
end
endmodule
