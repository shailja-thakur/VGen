// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

const int SIZE = 4096;

struct half_adder_state {
    uint16_t reg_a[SIZE];
    uint16_t reg_b[SIZE];
};

struct half_adder_state state;

void init() {
    for(int i = 0; i < SIZE; i++) {
        state.reg_a[i] = 0;
        state.reg_b[i] = 0;
    }
    cout = 0;
    sum = 0;
}

void step(half_adder_state *s) {
    sum += s->reg_b[0];
    cout += s->reg_a[0] ^ s->reg_b[0];
    s->reg_a[0] = s->reg_b[0];
    s->reg_b[0] = sendmodule
