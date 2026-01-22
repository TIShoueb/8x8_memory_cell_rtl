	`timescale 1ps / 1ps
module memorycells (
    input i0, i1, i2, i3, i4, i5, i6, i7,     // 8-bit input data
    input rw,             // Read/Write signal
    input valid,          // Valid signal
    input sel0, sel1, sel2, sel3, sel4, sel5, sel6, sel7, // Select signals for each word
    output o0, o1, o2, o3, o4, o5, o6, o7        // 8-bit output for selected word
);
    // Internal signals for word selection
    wire en0, en1, en2, en3, en4, en5, en6, en7;

    // Generate select signals
    and(en0, valid, sel0);
    and(en1, valid, sel1);
    and(en2, valid, sel2);
    and(en3, valid, sel3);
    and(en4, valid, sel4);
    and(en5, valid, sel5);
    and(en6, valid, sel6);
    and(en7, valid, sel7);

    // Instantiate word0 modules for each word
    word0 word_inst0 (.i({i0, i1, i2, i3, i4, i5, i6, i7}), .o({o0, o1, o2, o3, o4, o5, o6, o7}), .sel(en0), .rw(rw));
    word0 word_inst1 (.i({i0, i1, i2, i3, i4, i5, i6, i7}), .o({o0, o1, o2, o3, o4, o5, o6, o7}), .sel(en1), .rw(rw));
    word0 word_inst2 (.i({i0, i1, i2, i3, i4, i5, i6, i7}), .o({o0, o1, o2, o3, o4, o5, o6, o7}), .sel(en2), .rw(rw));
    word0 word_inst3 (.i({i0, i1, i2, i3, i4, i5, i6, i7}), .o({o0, o1, o2, o3, o4, o5, o6, o7}), .sel(en3), .rw(rw));
    word0 word_inst4 (.i({i0, i1, i2, i3, i4, i5, i6, i7}), .o({o0, o1, o2, o3, o4, o5, o6, o7}), .sel(en4), .rw(rw));
    word0 word_inst5 (.i({i0, i1, i2, i3, i4, i5, i6, i7}), .o({o0, o1, o2, o3, o4, o5, o6, o7}), .sel(en5), .rw(rw));
    word0 word_inst6 (.i({i0, i1, i2, i3, i4, i5, i6, i7}), .o({o0, o1, o2, o3, o4, o5, o6, o7}), .sel(en6), .rw(rw));
    word0 word_inst7 (.i({i0, i1, i2, i3, i4, i5, i6, i7}), .o({o0, o1, o2, o3, o4, o5, o6, o7}), .sel(en7), .rw(rw));

endmodule
