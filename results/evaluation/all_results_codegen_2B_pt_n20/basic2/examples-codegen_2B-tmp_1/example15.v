// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    void andGate( 
        input a, 
        input b,
        output out ) 
        
        // design block 'parallel andGate( x, y ) { \
        //     a---___ b---___ out \
        //                       }'
        
        // a is assigned to x and b is assigned to y
        
        {  

            out << a;
            
            a = b;
            
            out << charASTBloc( a );
        } // end of pararallel block
        
        // logicBlock {
        //     assign a { bits C { .. } to out; a is assigned to bits C }
        //     assign b { bits D { .. } to out }
        // } 
        
        // out.nbitet is assigned either a or b

and_gate( a, b, out );endmodule
