// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
wire [4:0] r_a, r_b;
wire in_a, in_b;
always @ (GCLK_D) 
begin
    if (sel == 0)
    {
        r_a = a;
        r_b = b;
        out = r_a;
    }
    else {
        r_a = r_b;
        r_b = a;
        out = r_b;
    }
end
*/
class Multiplexer {
    private:
        int a, b;
        int sel = 0;
        int out;
        int taken[4] = {0};
        
    public:
        Multiplexer(int a, int b) {
            this->a = a;
            this->b = b;
            out = 0;
        }
        endmodule
