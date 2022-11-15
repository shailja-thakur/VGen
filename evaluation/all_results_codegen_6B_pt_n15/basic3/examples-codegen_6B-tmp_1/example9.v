// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
priority_encoder i_priority = {
#x args,
};
// Output of the output module limits the range of the switch-width input
wirenegative_exponent exp_sig = sel ?
  (negative_exponent(math.ceil((math.log(2, in[2:0]))*3)) & arithmetic_tb) :
  tb_one_inverse(in[2:0]).neg_exp();
// Note that this priority encoder can always be set at an appropriate
// priority level. For example, it can not be disabled by an inverted
// assertion of sel.
defreg IFLAG_CARDSEL():
#ifcardflags()
  prev out_1d(1, in),
      out_1d(0, rebin({1:'i', 0:'q'},
        ))
    = unsigned(got_cardendmodule
