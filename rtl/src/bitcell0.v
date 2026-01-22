`timescale 1ps / 1ps

module bitcell0 (
    input sel,      // Select signal
    input rw,       // Read/Write signal
    input inp,      // Input data
    output outp     // Output data
);
    wire w2, r, s, ninp, q, nq, nrw, en;

    not(ninp, inp);
    nand(w2, sel, rw);
    or(r, w2, inp);
    or(s, w2, ninp);
    nand(q, r, nq);
    nand(nq, s, q);

    // Tristate logic
    not(nrw, rw);
    and(en, nrw, sel);

    // Built-in tristate buffer
	tristate2 tristate2(
		          .nq(nq),
				  .en(en),
				  .outp(outp));
endmodule
		
		
module tristate4 (nq, en, outp);
    input   nq, en;
    output  outp;
    tri     outp;
    bufif1  b1(outp, nq, en);
endmodule
