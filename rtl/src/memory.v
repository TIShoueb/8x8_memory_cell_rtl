module memory (
    // Address inputs
	input adr0, adr1, adr2,
    
    // Control signals
     input select, op, clk,
    
    // Data inputs (8 bits)
     input i0, i1, i2, i3, i4, i5, i6, i7,
    
    // Data outputs (8 bits)
	output o0, o1, o2, o3, o4, o5, o6, o7
);

    // Internal signals
     wire valid, rw;
     wire sel0, sel1, sel2, sel3, sel4, sel5, sel6, sel7; 

    // Concatenate inputs into a single 8-bit bus

    // Logic and module instantiations would go here


fsm3 fsm3(
    .op(op),
    .select(select),
    .clk(clk),
    .valid(valid),
    .rw(rw));
   
decoder decoder(
	.adr0(adr0),
	.adr1(adr1),
	.adr2(adr2),
	.sel0(sel0),.sel1(sel1),.sel2(sel2),.sel3(sel3),.sel4(sel4),.sel5(sel5),.sel6(sel6),.sel7(sel7)
	); 	
	
memorycells memorycells(
		.valid(valid),
    	     .rw(rw),
		.sel0(sel0),.sel1(sel1),.sel2(sel2),.sel3(sel3),.sel4(sel4),.sel5(sel5),.sel6(sel6),.sel7(sel7),
		.i0(i0), .i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6), .i7(i7),
		.o0(o0), .o1(o1), .o2(o2), .o3(o3), .o4(o4), .o5(o5), .o6(o6), .o7(o7)
		);
endmodule