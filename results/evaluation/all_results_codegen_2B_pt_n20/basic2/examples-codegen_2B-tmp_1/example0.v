// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

architecture top( );

signal a_out : std_logic;
signal b_out : std_logic;
signal out_out : std_logic;

entity and_gate;

begin

    and_gate_inst = and_gate( in_a, in_b, a_out, b_out, out_out );

    assign a_out : std_logic =
        tran3p( 
            eval( a_out ), 
            eval( a ),
            b_out );
    
    assign b_out : std_logic =
        tran3p( 
            eval( b_out ), 
            eval( b ),
            a_out );

end architecture;

`

const E_AND = 0x0
const E_AND_OUT = 0endmodule
