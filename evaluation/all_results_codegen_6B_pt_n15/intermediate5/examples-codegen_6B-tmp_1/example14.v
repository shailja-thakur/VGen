// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
regout ISR(load_w) {
	if(load==HIGH) {
		out = data;
	}
	else {
		out <<= amount;
		out = out | (out >> subtract);
	}
}
// rotate the out register followed by right shift the out register by subtract from amount bits
regout ISR(rotate_in) {
	out = out << subtract;
	out = out | (out >> amount);
}
// last else, result is stored in out register

//************************************************************************
// ******************************          Interface           ***************************
//************************************************************************
// Shift radix 2 LFSR Galois LFSR in with poly m. Addition of Galois LFSR is done
// on falling edge of clock HI_LOW load. Poly is right-shifted by amount bits and
// then shifted by subtractendmodule
