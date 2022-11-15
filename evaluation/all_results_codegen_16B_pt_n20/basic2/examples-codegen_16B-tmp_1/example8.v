// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

assign and_gate_bz(in, and_gate_out){
  and_gate(a, b, and_gate_out);
}
    
// module implementation of the logic gate

logic gate_AND( 
    input a, 
    input b, 
    output in) 
{
    switch ((a, b)) { 
        case (1, 1):         *in = 1  
            break;         
        case (1, 0):         *in = a  
            break;         
        case (0, 1):         *in = b  
            break;         
        case (0, 0): 
        default:            *in = 0  
            break; 
    }  
}
endmodule
