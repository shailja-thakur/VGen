// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
assign out = a & b;

note here we must specify an exact size of data types, 
so we put in the virtul functions, but the 
function only writes 2 bits into the third parameter
(in this case a 4-bit reg), and we must use 'integer' 
to do the parameterized '%b'
or we can use '%x' to get hex output for the
respective 4 bits in a series of hex digits. 
*/
endmodule
