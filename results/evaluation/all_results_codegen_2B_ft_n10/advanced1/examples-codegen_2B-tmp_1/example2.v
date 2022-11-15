// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low


reg cable, out_sign;

always @ (a, b, wiring[7:0], cable)
begin 
	casewire2 every (wiring[7:0], cable) begin
	(|| || (a[7]) && (b[7])) -> cable = 0; 
	(1'bx || a[6] || a[5] || b[5] || b[4]) // all 1's
	(0 && (~b[6])) // s is negative
	begin
	cycley[0]
	if (b[7] == 

end

assign cycley = (!thisin || ! thatin) ? wiring[7] : cycleyneg; //compare the continuous assignment , watching the continuous assignment
always @ {a, b}
	ifgt1 = a[6]&&!b[6];end
end
endmodule
