// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
reg [1:0] in1, in2;
assign {cout, sum} = in1 + in2 + in1;
always@(in1 or in2 or in1 or in2)
		begin
			in1 <= {in1[0],in2[0]};
			in2 <= {in1[1] ^ in2[0]};
		end
assign cout = in1[0];
assign sum = in1[1];
endmodule
