
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

module tb_mux;

    reg [4:0] a,b;
    reg sel;
    wire [4:0] out;

    integer increment_a = 0;
    
    // duration for each bit = 2 * timescale = 2 * 1 ns  = 2ns
    localparam period = 2;  

    mux UUT (.a(a), .b(b), .sel(sel), .out(out) );
    
    initial // initial block executes only once
        begin

            // values for inputs
            a = 0; b= 0;
            while (b<4'b1111) begin

                sel=0;
                #period; // wait for period 
                if (out!==a) begin
                    $display("test failed");
                    $finish;
                end
                else $display("a = %b , b = %b, sel=%b, out = %b", a,b,sel,out);

                sel=1;
                #period; // wait for period 
                if (out!==b) begin
                    $display("test failed");
                    $finish;
                end
                else $display("a = %b , b = %b, sel=%b, out = %b", a,b,sel,out);

                if (increment_a) a = a+1;
                else b = b+1;

                if(increment_a) increment_a = 0;
                else increment_a=1;
            end
        
            $display("all tests passed");
            $finish;

        end

endmodule