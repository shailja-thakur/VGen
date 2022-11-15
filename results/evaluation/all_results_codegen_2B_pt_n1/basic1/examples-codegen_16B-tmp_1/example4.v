// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
	
	
	 assign out = in;
	
 endmodule 
//7 segment hexadecimal decoder
module decoder( seg, hex );
	output [6:0] seg;
	input [3:0] hex;

	reg [6:0] seg;

	always @(*)
	begin
	// seg = ~hex;
	// seg = 7'b1000000;
	case (hex)
	
	4'h0: seg = 7'b0000001;
	4'h1: seg = 7'b1001111;
	4'h2: seg = 7'b0010010;
	4'h3: seg = 7'b0000110;
	4'h4: seg = 7'b1001100;
	4'h5: seg = 7'bendmodule
