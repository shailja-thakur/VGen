// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// design a module that adds two numbers
module add( input a, input b, output add );

// add out to in1 + in2

// design a module that converts binary to decimal
module convert_binary( input bo, output dec );

// SLIBAdd as detailed above does not handle decimal
// but handle numeric types. Here is a primitive function
// to convert decimal to binary
static char bo2nd( char binary );

// converter for binary
static outlet f3( inlet, binary types );
static double tol = 2; // decimal place level
static char binary[10] = "1"; // initialize

// calls converter f3 to fill outlet of type binary
static outlet f11( outlet, unsigned );

void print( char finding ){
    
    err( finding );
}

// Error Print
static void err( char find ){endmodule
