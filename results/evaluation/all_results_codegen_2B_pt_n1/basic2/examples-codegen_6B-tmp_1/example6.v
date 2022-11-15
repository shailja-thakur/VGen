// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    case a, b, out : out == "0"
                    case b, a, out : out == "0"
                    case c, a, out : out == "0"
                    case c, b, out : out == "0"
                    case a, c, out : out == "0"
                    case b, c, out : out == "0"
                    default: out == "1"
function T(a, b)..............................(out == a and b);
end
endmodule
