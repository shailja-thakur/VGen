// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(*input=slowena, clk=slowEN)
begin : main
    if (slowena&&reset) then
        q<3:0> = 0;
    else if (slowena && q<1:0> == 9) then;
        q<3:0> = 9;
    end else
end


#snippet(07_agilent_oddeven_counter)
snippet(08)
@always @(clk=slowEN, selA==selB,selC,selD)
$hex({0x10    |selA==0| clockA||slowena, \
      0xc0    |selB==1| clockB||slowena, \
	  0xe0    |selC==2| clockC||slowena, \
	  0x110    |selD==3|endmodule
