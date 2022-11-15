// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits

always @(posedge clk or posedge reset)
	begin
	if (load)
	out = data;
	else
	begin
	/*square z = square(1000-x);
	half square z1 = square(x/2-1);
	mul q(x,z,m);//*
	sub s(x,1000,z,sub);
	mul p(z,x,m,q);
	sub s1(q,sub,m,x0);
	mul q1(x0,z,m,p); 
	mux u(x0,p,q,y);
	initial[7:0]*/
	
	if(amount==3'b111)
	out = 0;
	else
	begin
	if(~(|amount))
	out = 8'b0end
end
end
endmodule
