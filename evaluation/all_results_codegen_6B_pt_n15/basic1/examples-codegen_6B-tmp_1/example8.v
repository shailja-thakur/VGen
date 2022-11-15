// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
outs = in;

/*********************************** connect voltage clamp pins *************************************/
// *CONNECT AN AUDIO OUTPUT TO THE THE OUTPUTS OF THE U2F BLASTER AND IT'S
// PUFF BANK (U2F PUFF BANK_B), 并在 PD12(PWM A), PD10(PWM B),
// PD13(ENCODER X), PD14(ENCODER Y), PD15(BANGER) 上运行, 将输出连接到 U2F 外面的VA的 A、B端口上的数字模拟器端口。

// connect PD12 to voltage clamp A (ADC PA_X),
SDA_X   = gnd |  pa_x
SDA_endmodule
