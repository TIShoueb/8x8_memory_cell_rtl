//-----------------------------------------------------------------------------
//
// Title       : decoder
// Design      : decoder
// Author      : Adam Jonas
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/decoder/src/decoder.v
// Generated   : Wed Nov 13 12:38:28 2024
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
//{module {decoder}}

module decoder ( adr0 ,adr1 ,adr2 ,sel0 ,sel1 ,sel2 ,sel3 ,sel4 ,sel5 ,sel6 ,sel7 );

input adr0;
wire adr0;
input adr1;
wire adr1;
input adr2;
wire adr2;
output sel0;
wire sel0;
output sel1;
wire sel1;
output sel2;
wire sel2;
output sel3;
wire sel3;
output sel4;
wire sel4;
output sel5;
wire sel5;
output sel6;
wire sel6;
output sel7;
wire sel7;

//wires
wire nadr01;
wire adr01;
wire nadr02;
wire adr02;
wire adr12;
wire nadr0;
wire nadr12;
wire nadr1;
wire nadr2;

//sel0
nor(sel0,adr0,adr1,adr2);

//sel1
nor(nadr01,adr0,adr1);
and(sel1,nadr01,adr2);

//sel2
nor(nadr02,adr0,adr2);
and(sel2,nadr02,adr1);

//sel3
and(adr12,adr1,adr2);
not(nadr0,adr0);
and(sel3,adr12,nadr0);

//sel4	
nor(nadr12,adr1,adr2);
and(sel4,nadr12,adr0);

//sel5
and(adr02,adr0,adr2);
not(nadr1,adr1);
and(sel5,adr02,nadr1);

//sel6	  
and(adr01,adr0,adr1);
not(nadr2,adr2);
and(sel6,adr01,nadr2);

//sel7
and(sel7,adr0,adr1,adr2);

// Enter your statements here //

endmodule
