// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg [3:0] b;
reg cond;
assign cond = (in[pos] && (b & 0b11) > 0b01 );
b = b +3;
`

type Program struct{
	Instructions []Instruction
	SnakeIsRobot bool
}

type Instruction struct {
	Opcode  string
	Inst    interface{}
	Writer  []string
	Prog    typeof(0)
	Args    []string
	ArgLen  int
	RLoader *reloader.Reloader

	Needs                                                        //Needs indicates what kinds of opcodes this inst can use, like std int/float
	NextPC                                                      //Jump PC offset of next instruction
	NextBlock                                                   //Branch out to this block
	NextReloads                                                 //Jumpendmodule
