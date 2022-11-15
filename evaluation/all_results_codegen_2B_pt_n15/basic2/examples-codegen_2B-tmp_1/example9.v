// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

rule input_rules[] =
{
    {
        lhs = input_lhs,
        rhs = in_a,
        type = AND_OF_INPUT.rpt_type
    },
    {
        lhs = input_lhs,
        rhs = in_b,
        type = AND_OF_INPUT.rpt_type
    },
    
    {
       lhs = out_lhs,
       rhs = { in_a, in_b },
       type = AND_OF_OUTPUT.rpt_type
   }
};

state variables[] =
{
    { in_a, in_b }
};

constraint constraints[] =
{
    {
         lhs = { in_a, in_b },
         rhs = 1,
         toConstantendmodule
