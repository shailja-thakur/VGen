
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_adv_fsm;

    reg clk, reset, a,b;
    wire z;

    parameter IDLE = 0,
    SA = 1,
    SB = 2,
    SAB = 3;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  
    abro UUT (.clk(clk), .reset(reset), .a(a), .b(b), .z(z) );

    initial // Clock generation
        begin
        clk = 0;
        forever begin
        #(period/2);
        clk = ~clk;
        end
    end

    initial begin

        #2;
        
        // check reset
        reset = 1; a = 0; b=0;
        #period;
        // goes to state IDLE
        if(z!==0) begin
            $display("test 1 failed");
            $finish;
        end
        else $display("a=%b, b=%b z=%b",a,b,z);

        // // check reset with a,b=1
        // reset = 1; a = 1; b=1;
        // #period;
        // // goes to state IDLE
        // if(z!==0) begin
        //     $display("test 2 failed");
        //     $finish;
        // end
        // else $display("a=%b, b=%b z=%b",a,b,z);

        // start fsm
        reset = 0; a = 0; b=0;
        #period;
        // goes to state IDLE
        if(z!==0) begin
            $display("test 3 failed");
            $finish;
        end
        else $display("a=%b, b=%b z=%b",a,b,z);

        // case: a then b
        a = 1; b=0;
        #period;
        a = 0; b=1;
        #period;
        // goes to state IDLE
        if(z!==1) begin
            $display("test 4 failed");
            $finish;
        end
        else $display("a=%b, b=%b z=%b",a,b,z);

        // check if it goes back to 0
        #period;
        // goes to state IDLE
        if(z!==0) begin
            $display("test 5 failed");
            $finish;
        end
        else $display("a=%b, b=%b z=%b",a,b,z);

        // case: a , gap, then b
        #period;
        a = 1; b=0;
        #period;
        #period;
        #period;
        #period;
        a = 0; b=1;
        #period;
        // goes to state IDLE
        if(z!==1) begin
            $display("test 6 failed");
            $finish;
        end
        else $display("a=%b, b=%b z=%b",a,b,z);

        // case: b then a
        #period;
        a = 0; b=1;
        #period;
        a = 1; b=0;
        #period;
        // goes to state IDLE
        if(z!==1) begin
            $display("test 7 failed");
            $finish;
        end
        else $display("a=%b, b=%b z=%b",a,b,z);


        // case: b , gap, then a
        #period;
        a = 0; b=1;
        #period;
        #period;
        #period;
        #period;
        a = 1; b=0;
        #period;
        // goes to state IDLE
        if(z!==1) begin
            $display("test 8 failed");
            $finish;
        end
        else $display("a=%b, b=%b z=%b",a,b,z);

        // case:a and b together
        #period;
        a = 1; b=1;
        #period;
        // goes to state IDLE
        if(z!==1) begin
            $display("test 8 failed");
            $finish;
        end
        else $display("a=%b, b=%b z=%b",a,b,z);

        $display("all tests passed");
        $finish;

    end

endmodule