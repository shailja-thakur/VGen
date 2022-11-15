// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 

// counter module instantiation 
counter q0; 
// Global variable declarations 
`

const (
	// cntQBufSize is the size of the buffer for the counter
	cntQBufSize = 3
)

// Qbuf is used to buffer the values of the counter
type Qbuf struct {
	a  [cntQBufSize]byte
	b  [cntQBufSize]byte
	c  [cntQBufSize]byte
	d  [cntQBufSize]byte
	e  [cntQBufSize]byte
	f  [cntQBufSize]byte
	g  [cntQBufSize]byte
	h  [cntQBufSize]byte
	i  [cntQBufSize]byte
	j  [cntQendmodule
