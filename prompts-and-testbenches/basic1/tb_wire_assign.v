
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_wire_assign;

    reg in;
    wire out;

    // duration for each bit = 2 * timescale = 2 * 1 ns  = 2ns
    localparam period = 2;  

    wire_assign UUT (.in(in), .out(out) );
    
    initial // initial block executes only once
        begin
            // values for inputs
            in = 0;
            #period; // wait for period 
            if (out!==0) begin
                $display("test 1 failed");
                $finish;
            end
            else $display("in = %b , out = %b", in, out);

            in = 1;
            #period; // wait for period 
            if (out!==1) begin
                $display("test 2 failed");
                $finish;
            end
            else $display("in = %b , out = %b", in, out);


            in = 0;
            #period; // wait for period 
            if (out!==0) begin
                $display("test 3 failed");
                $finish;
            end
            else $display("in = %b , out = %b", in, out);

            $display("all tests passed");
            $finish;

        end
endmodule