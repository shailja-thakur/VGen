// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input [7:0] a, b;
output [7:0] sum, cout;

assign {sum, cout} = {a, b};

half_adder_0: //for i = 0 to 7
    if (cout == 0) {
        sum = sum + {a, b};
        cout = 1;
    }
    else {
        sum = sum + {a, b};
        cout = 2;
    }
    next half_adder_0;

half_adder_1: //for i = 8 to 15
    if (cout == 0) {
        sum = sum + {a, b};
        cout = 1;
    }
    else {
        sum = sum + {a, b};
        cout = 2;
    }
    next half_adder_1;

endmodule
