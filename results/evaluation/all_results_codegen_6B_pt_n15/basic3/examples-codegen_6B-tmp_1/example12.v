// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// This signals IO oneself from the previous b shares the negative inputs of PCR.
begin always @(posedge clk) 
  if (sel)
  b <= POS_3 | (POS_2 & ~(in[0])) | (POS_1 & ~(in[1])) | (POS_0 & ~(in[2]));
  else
  b <= 0;
wait @(negedge @clk);
end
end
module pci0 {
	real bogus;
	real _1lv, _1pi, _1pi2, _1pi2_;
	real &_2ncy, &_3ncy, &_2pos, &_3pos;
	real &_2tc, &_3tc;
	real &_2ct, &_3ct;
	real &_2pc, &_3pc;
endmodule
