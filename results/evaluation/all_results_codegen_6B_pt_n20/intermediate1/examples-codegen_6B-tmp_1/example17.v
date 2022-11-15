// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

#include "regimes/open_status_mask.h"

always @(*) {
    if (cout) sum <= a;
    else           cout <= b;
}

module open_adder(
    input a, b,
    output cout, sum );

#include "regimes/open_status_mask.h"

always @(*) {
    if (cout) sum <= a + b;
}

module closed_adder(
    input a, b,
    output cout, sum );

#include "regimes/closed_status_mask.h"

always @(*) {
    if (cout) sum <= a + b;
}
`

//expected output data for given input data
const expected_output_data = map[string](string) {
	//one wires into dualuction, changeendmodule
