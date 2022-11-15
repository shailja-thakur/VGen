// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low


// A simple implementation of the signed_adder.
// It can be used for testing purposes.

#include <iostream>
#include <vector>
#include <algorithm>
#include <set>

using namespace std;

class signed_adder {
public:
    signed_adder(vector<int> a, vector<int> b, vector<int> s, vector<int> overflow);

    void add(int a, int b);
    void add_overflow(int a, int b);

    void print_result();

private:
    vector<int> a;
    vector<int> b;
    vector<int> s;
    vector<int> overflow;
};

signed_adder::signed_adder(vector<int> a, vector<int> b, vector<int> s, vector<int> overflow)
endmodule
