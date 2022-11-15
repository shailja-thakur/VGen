// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out; assign out to 1 when both 
 insignia values are 0
// modify theInput: questionMark input is present at each and with 
// exclusive logic connect to 1 // questionMark value should be present 
// mutually with a and b when the signal is present

assign out = (a && b); // to do
$display("output = ",out);

endmodule
