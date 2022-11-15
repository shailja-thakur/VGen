// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
typedef halfadder2 half_adder_type;

struct half_adder_info;
struct half_adder_info {
    half_adder_type &regs;
    half_adder_info( half_adder_type &r );
            void clear();
            enable_function(bool);
            half_adder_type aux() const;
};
internal(*helper) half_adder_info(half_adder_t &r);
task half_adder_task = [&]{
    auto info = half_adder_info(half_adder);
    bool lanc = false;
    while(true) {
        bool au;
        (void) aux().regs;
        mid(aux());
        mid(lanc);
        :lanc = (aux().regs.mux.q != 0.5);
        :au   = lendmodule
