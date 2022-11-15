// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a and b to out. 

wire [3:0] x;

always @* begin
    // Run the switch statement for a value.
    case (a[2]<<2) | (a[1]<<1) | a[0]:
        // Run the switch statement for b.
        case (b[2]<<2) | (b[1]<<1) | b[0]:
            // If sel=0, assign out.
            if (sel == 0) out[2] = a[3];
            // If sel==1, assign out.
            if (sel == 1) out[3] = b[3];
            // If sel==2, assign out.
            if (sel == 2) out[3] = a[3];
            // Write x.
            xend
endmodule
