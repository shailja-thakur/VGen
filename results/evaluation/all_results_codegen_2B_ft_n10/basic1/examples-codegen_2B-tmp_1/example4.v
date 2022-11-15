// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;

// power is a final declaration

function [7:0] power;
input [7:0] in;
begin
	power = in;
	for (i=0;i<8;i=i+1)//was $FF
	result = power;
	power = power >> 1;
end
endfunction

endmodule
