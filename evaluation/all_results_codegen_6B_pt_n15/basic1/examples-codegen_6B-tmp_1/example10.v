// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
#define mult(top) mult(top,c)
#define shl(top) shl(top,d)
#define add(top) add(top,l)
#define xor(top) xor(top,l)
#define or(top) or(top,h)

//Template: input_001
Wire mult(BAR_1, IN0);         // Assign out to mult(IN0,BAR_1)
Wire shl(&DATA_1,IN0);        // Assign out to shl(&DATA_1,IN0)
Wire add(&DATA_1,IN1);       // Assign out to add(&DATA_1,IN1)
Wire xor(&DATA_1,IN2);       // Assign out to xor(&DATA_1,IN2)
Wire or(&DATA_1,IN3);        //endmodule
