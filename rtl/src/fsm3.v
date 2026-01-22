//-----------------------------------------------------------------------------
//
// Title       : fsm3
// Design      : fsm3
// Author      : Adam Jonas
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/fsm3/fsm3/src/fsm3.v
// Generated   : Wed Nov  6 19:15:03 2024
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
//{module {fsm3}}

module fsm3 ( op ,select ,clk ,valid ,rw );

input op;
wire op;
input select;
wire select;
input clk;
wire clk;
output valid;
wire valid;
output rw;
wire rw; 

//wires
wire nop, s, r, nq, s2, r2, nq2, q2, nsel,nrw,val1,val2,val3;

//}} End of automatically maintained section
//da flipflop
not(nop,op);
nand(s,op,clk);
nand(r,nop,clk);
nand(nq,r,rw);
nand(rw,s,nq);

//db flipflop
not(nsel, select);
nand(s2, select, clk);
nand(r2, nsel, clk);
nand(nq2, r2, q2);
nand(q2, s2, nq2);	

//stable state
not(nrw,rw);
and(val1,q2,nrw);
and(val2,rw,q2);
and(val3,val2,clk); 
or(valid,val3,val1);

endmodule
