// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire ASSIGN[EL_7]={[LO_10]=vol_mgain_clb, [HI_10]=vol_mgain_cbw,
                  [LO_11]=vol_digital_gain_clb, [HI_11]=vol_digital_gain_cbw,
                  [LO_12]=vol_pas_gain_clb, [HI_12]=vol_pas_gain_cbw};
wire PLUS_ASSIGN[2]={[LO_13]=MI_SAI3_CLK, [HI_13]=MI_SAI3_DIN};
wire WPROGCLB[IMG_REGEN_1/4]=        // generator clb procedure of proc_image
{[LO_05]=0, [HI_05]=1, [LO_06]=0, [HI_06]=1, [LO_07]=0, [HIendmodule
