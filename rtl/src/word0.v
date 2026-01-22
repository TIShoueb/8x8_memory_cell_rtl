// 8-bit word using generate loop
module word0 (
    input [7:0] i,   // 8-bit input
    output [7:0] o, // 8-bit output
    input sel,          // Select signal
    input rw            // Read/Write signal
);

    // Generate block to instantiate 8 bitcells
    genvar j;
    generate
        for (j = 0; j < 8; j = j + 1) begin : bitcell_gen
            bitcell0 bc (
                .sel(sel), 
                .rw(rw), 
                .inp(i[7-j]), 
                .outp(o[7-j])
            );
        end
    endgenerate

endmodule	