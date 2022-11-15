// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module routes(inputs{source_pll, source_phy, source_spd_out}, outputs{pxl, phy, spd_out});
module phys(inputs{pxl_path}, outputs{physical_path});
module inputs(inputs{pxl, phy, spd_out});
module outputs(outputs{source_pll, source_phy, source_spd_out, phy_rate});

// Load needed NIT files
load ("/app/load/nit/phys_interface.nel");
load ("/app/load/nit/phys_list.nel");

// Proc inputs and outputs and assign them conditionally
module_func phys_inputs = {
    .pxl = inputs{pxl_path},
    .file = edges(phys_interface_table["pxl"))
};
module_func phys_endmodule
