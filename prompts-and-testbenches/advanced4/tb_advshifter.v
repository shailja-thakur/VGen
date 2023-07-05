
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_adv_shifter;

    reg clk, load, ena;
    reg [1:0] amount;
    reg [63:0] data;
    wire [63:0] q;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  
    advshift UUT (.clk(clk), .load(load), .amount(amount), .data(data), .ena(ena), .q(q) );

    initial // Clock generation
        begin
        clk = 0;
        forever begin
        #(period/2);
        clk = ~clk;
        end
    end

    initial begin

        // load data (load not enabled, should not load)
        data = 64'hffff_ffff_ffff_ffff;
        load = 0;
        amount = 0;
        ena = 0;
        #period;
        if(q===64'hffff_ffff_ffff_ffff) begin
            $display("test 1 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, ena=%b, q=%b",load,amount,ena, q);

        // enable load
        load = 1;
        amount = 0;
        ena = 0;
        #period;
        if(q!==64'hffff_ffff_ffff_ffff) begin
            $display("test 2 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, ena=%b, q=%b",load,amount,ena, q);

        // chead load override
        load = 1;
        amount = 2;
        ena = 0;
        #period;
        if(q!==64'hffff_ffff_ffff_ffff) begin
            $display("test 3 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, ena=%b, q=%b",load,amount,ena, q);

        // amount = 0 but not enabled (checking enable functionality)
        load = 0;
        amount = 0;
        ena = 0;
        #period;
        if(q===64'hffff_ffff_ffff_fffe) begin
            $display("test 4 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, ena=%b, q=%b",load,amount,ena, q);

        // enable, amount=0
        load = 0;
        amount = 0;
        ena = 1;
        #period;
        if(q!==64'hffff_ffff_ffff_fffe) begin
            $display("test 5 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, ena=%b, q=%b",load,amount,ena, q);

        // enable, amount=1
        load = 0;
        amount = 1;
        ena = 1;
        #period;
        if(q!==64'hffff_ffff_ffff_fe00) begin
            $display("test 6 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, ena=%b, q=%b",load,amount,ena, q);

        // enable, amount=2
        load = 0;
        amount = 2;
        ena = 1;
        #period;
        if(q!==64'h7fff_ffff_ffff_ff00) begin
            $display("test 7 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, ena=%b, q=%b",load,amount,ena, q);

        // enable, amount=3
        load = 0;
        amount = 3;
        ena = 1;
        #period;
        if(q!==64'h007f_ffff_ffff_ffff) begin
            $display("test 8 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, ena=%b, q=%b",load,amount,ena, q);

        $display("all tests passed");
        $finish;

    end


endmodule