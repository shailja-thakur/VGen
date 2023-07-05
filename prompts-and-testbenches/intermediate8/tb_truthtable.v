`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_truthtable;

    reg x3,x2,x1;
    wire f;

    // duration for each bit = 2 * timescale = 2 * 1 ns  = 2ns
    localparam period = 2;  
    integer i;

    truthtable UUT ( .x3(x3), .x2(x2), .x1(x1), .f(f) );
    
    initial // initial block executes only once
    begin

        x3=0; x2=0; x1=0;
        #period; // wait for period 
        if (f!==1) begin
            $display("test 1 failed");
            $finish;
        end
        else $display("x3=%b, x2=%b, x1=%b, f=%b ", x3,x2,x1,f);

        x3=0; x2=0; x1=1;
        #period; // wait for period 
        if (f!==1) begin
            $display("test 2 failed");
            $finish;
        end
        else $display("x3=%b, x2=%b, x1=%b, f=%b ", x3,x2,x1,f);

        x3=0; x2=1; x1=0;
        #period; // wait for period 
        if (f!==0) begin
            $display("test 3 failed");
            $finish;
        end
        else $display("x3=%b, x2=%b, x1=%b, f=%b ", x3,x2,x1,f);

        x3=0; x2=1; x1=1;
        #period; // wait for period 
        if (f!==1) begin
            $display("test 4 failed");
            $finish;
        end
        else $display("x3=%b, x2=%b, x1=%b, f=%b ", x3,x2,x1,f);

        x3=1; x2=0; x1=0;
        #period; // wait for period 
        if (f!==0) begin
            $display("test 5 failed");
            $finish;
        end
        else $display("x3=%b, x2=%b, x1=%b, f=%b ", x3,x2,x1,f);

        x3=1; x2=0; x1=1;
        #period; // wait for period 
        if (f!==0) begin
            $display("test 6 failed");
            $finish;
        end
        else $display("x3=%b, x2=%b, x1=%b, f=%b ", x3,x2,x1,f);

        x3=1; x2=1; x1=0;
        #period; // wait for period 
        if (f!==1) begin
            $display("test 7 failed");
            $finish;
        end
        else $display("x3=%b, x2=%b, x1=%b, f=%b ", x3,x2,x1,f);

        x3=1; x2=1; x1=1;
        #period; // wait for period 
        if (f!==0) begin
            $display("test 8 failed");
            $finish;
        end
        else $display("x3=%b, x2=%b, x1=%b, f=%b ", x3,x2,x1,f);

        $display("all tests passed");
        $finish;
    end


endmodule