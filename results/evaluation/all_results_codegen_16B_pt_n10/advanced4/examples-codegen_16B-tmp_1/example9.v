// Design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
module advshift(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63:0] q); 
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift.
// 2'b00: shift left by 1 bit.
// 2'b01: shift left by 8 bits.
// 2'b10: shift right by 1 bit.
// 2'b11: shift right by 8 bits.

    assign q[/*1*/64] = (load ? {data[63:0]} : ({shiftena !== 0} ? ({enabitemsaplaceholder: {shiftbits}}) : ({sldata: {shiftbits}})) + ({periphdata: {shiftena !== 0 ? toint(data[63:8],amount) : 0}})) $
                      ({byemasters1bits:{shiftbits} = 0x{shiftbits}})



`
# pragma export 
#oeuvre_base += open_arch(`
	// shorthand for primitive clock functions
	function set_reset(rst);
				input rst //Clock reset
				//protection fases
				if rising_edge(rst); erase_won_and_won_paused = false reset_asserted_int nop
				if rising_edge(rstendmodule
