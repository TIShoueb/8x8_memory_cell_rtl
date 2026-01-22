//-----------------------------------------------------------------------------
//
// Title       : bitcell
// Design      : bitcell
// Author      : Adam Jonas
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/bitcell/src/bitcell.v
// Generated   : Wed Oct 23 14:25:31 2024
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {bitcell}}

module bitcell ( sel ,rw ,inp ,outp );

input sel;
wire sel;
input rw;
wire rw;
input inp;
wire inp;
output outp;
wire outp;
wire w2;
wire r;
wire s; 
wire ninp;
wire q;	
wire nq;
wire nrw;

//}} End of automatically maintained section
not(ninp,inp);
nand(w2,sel,rw);
or(r,w2,inp);
or(s,w2,ninp);
nand(q,r,nq);
nand(nq,s,q);
not(nrw,rw);
and(outp,nq,nrw,sel);
// Enter your statements here //

endmodule
