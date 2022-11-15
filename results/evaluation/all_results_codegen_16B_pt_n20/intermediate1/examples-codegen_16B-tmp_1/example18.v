// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input rst, clock, clear, a, b, slr, cin, acin, scin, cout, sum;

input [17:0] a, b;
output [17:0] cout, sum;

begin  // Integrate clock domain for one clock cycle, 1 RGCLK | 2 RGCLK
 	while (clock) begin
 		#(0) sibling_read ( // Ties implicit master outputs to specified outputs.
 			slr, cin, acin, scin, cout, sum;
 		end
 		#(1) logic reset,
 			if (rst=0) begin
 				sum=0;
				cout=0; // signals half adder carry and sum are ready
				a=0; // signals half adder clear
				b=0; // signals half adder clear
 			end
endmodule
