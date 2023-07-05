`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_half_adder;

    reg a,b;
    wire cout,sum;

    // duration for each bit = 2 * timescale = 2 * 1 ns  = 2ns
    localparam period = 2;  

    half_adder UUT ( .a(a), .b(b), .cout(cout), .sum(sum) );
    
    initial // initial block executes only once
        begin
            // values for inputs
            a = 0; b=0;
            #period; // wait for period 
            if (cout!==0 && sum!==0) begin
                $display("test 1 failed");
                $finish;
            end
            else $display("a=%b, b=%b, cout=%b, sum=%b ", a,b,cout,sum);

            a = 0; b=1;
            #period; // wait for period 
            if (cout!==0 && sum!==1) begin
                $display("test 2 failed");
                $finish;
            end
            else $display("a=%b, b=%b, cout=%b, sum=%b ", a,b,cout,sum);

            a = 1; b=0;
            #period; // wait for period 
            if (cout!==0 && sum!==1) begin
                $display("test 3 failed");
                $finish;
            end
            else $display("a=%b, b=%b, cout=%b, sum=%b ", a,b,cout,sum);

            a = 1; b=1;
            #period; // wait for period 
            if (cout!==1 && sum!==0) begin
                $display("test 4 failed");
                $finish;
            end
            else $display("a=%b, b=%b, cout=%b, sum=%b ", a,b,cout,sum);

            $display("all tests passed");
            $finish;

        end


endmodule