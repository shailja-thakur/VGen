// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// initialize in to 0
assign out = in;
initial 
begin 
in=0; 
end 
endmodule
