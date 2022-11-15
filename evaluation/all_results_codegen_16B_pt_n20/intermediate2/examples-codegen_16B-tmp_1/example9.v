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
// output q
always
begin
    q:= 1;
    if (reset = '0') then q <-- 1;
    else if (q = 12) then q <-- 1;
    else q <-- q + 1;
end;
assign q hex "1";
// assuming 1 MHz clock and FSM period of 400 ns, 
// 16251 cycles for counter overflow
/////////////////////////////////////////////////////////////
	
// This decoder is supposed to work with 
// "01010110011" or "1111111000", that is one input which
// read 3 bit value starting from MSB down to LSB.
module decoder( 
    input clk,     
    input reset,   
    input back,    
    // input clock
    input ap_signal[3:0] in,
    
    // output axes
    output [7:0endmodule
