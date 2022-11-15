// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

assign out = a && b; 

 
module not_gate( 
乖יןnotgate, 
串接notnotgate1-->notnotgate2 
notnotgate1: 
וnotgate2-->notgate3
);

// NOT is 1'b1(???) and notgate2

assign notnotgate1 = 1'b1; // Input doesnt matter here
// AND gate
assign notnotgate2 = in || notnotgate1;
assignりnotgate3 = in && notnotgate2; // since notgate2 is 1'b1 THIS WOULD AND OVER THE ABOVEN AND



endmodule
