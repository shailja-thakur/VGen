// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 not_gate n1(a, b, out);
 endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/23 10:02:23
// Design Name: 
// Module Name: tb_gate
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_gate;


//test_and_gate tb1();
//test_nor_gate tb2();

////////////////////////////////////////////////////////////////////////////////
// Engineer: 
// 
// Create Date: 2020/11/23 09:36:34
// Design Name:endmodule
