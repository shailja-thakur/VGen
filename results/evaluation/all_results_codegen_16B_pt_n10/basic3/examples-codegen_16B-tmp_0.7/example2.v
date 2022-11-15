// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign b to in
always @(posedge clk) begin
	case(sel)
		case(in)
			pos <= 0;
			case(in | ~f[0])
				pos <= 1;
				case(in | ~f[1])
					pos <= 2;
					case(in | ~f[2])
						pos <= 3;
						case(in | ~f[3])
							pos <= 4;
		endcase
	endcase
end

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [3:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign b to in
always @(posedendmodule
