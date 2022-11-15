// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg cout, sum;
reg digit[5];  // 
notify [digit] { cout << "a: " << {{digit}} << "\n"; }
Wire a, b;

// generate a carry-out signal
notify c[sum] { cout << "cout: " << {{c}} << " bit\n"; }

// PRAM module
pram test_adder;

// this is the internal LUT. It calculates (a&b)^c where c is a H-type inc binary signal
If (a,b) -> sum, carry -> cout
In parallel
conditional c[{{sum+carry}}] { suml[{{sum+carry}}] = {{a}} + 1 + {{b}};
       sumh[{{sum+carry}}] = carry;                }
else { suml[{{sum+carry}}] = {{aendmodule
