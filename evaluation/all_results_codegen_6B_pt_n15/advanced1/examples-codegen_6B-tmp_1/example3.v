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



function signed_adder_behavior() ::
    computeSignBehaviorAliased - recv an integer to calculate signed behavior for

    comprehension (i : [0 ..6]) - extract an integer  from i
    dataflow (d : store, computeSignBehaviorAlias) - fetch for mention in dataflow

    initSignBehavior - init to expect no input, must respect the value asserted in precedencesInfo, do action at write only respective this
    calcUpdateOutput - do action at beginning of access to computeSignBehaviorAlias and do write action to computeOutput the signal for the calcsign state
main:
    behavior.main

signed_adder_behavior (a, b, s, overflow) ::
    initSignBehavior(=)
    computeSignBehaviorAliased(a)
    signBehaviorAlias <- computeSignBehaviorAliased
    dataflow(end
endmodule
