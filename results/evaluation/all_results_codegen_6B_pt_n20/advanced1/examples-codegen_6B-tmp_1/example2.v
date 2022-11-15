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

  always union @ a, b, s {
    m_input_overflow: 1;
    m_input0: a[0:0];
    m_input1: a[1:8];
    m_input2: a[2:16];
    m_input3: a[3:24];
    m_input4: b[0:0];
    m_input5: b[1:8];
    m_input6: b[2:16];
    m_input7: b[3:24];
    m_output_overflow: overflow;
  }

`;

compute(dut, data, messages);

function compare(results, expected) {
    console.log("results = ", results);
    console.log("expected = ", expected);
    const fail = false;
    const fail_messageendmodule
