// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
 in;
out;

// combinational logic to assign the output
reg RAN = 1;
always@( in or RAN )
begin
if(in == 1 | RAN)
out = 1;
else
out = 0;
end
 endmodule



module tb_w_assign;
reg IN;
wire OUT;
wire_assign inst (IN, OUT);
initial 
begin	
	IN = $random;#5;
	$finish;
end
initial
$monitor($time, " IN ++++= %b OUT -**-= %b\n", IN, OUT);
endmodule
