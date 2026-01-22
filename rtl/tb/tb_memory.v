module tb_memory;

	reg op,select,clk,i0 ,i1 ,i2 ,i3 ,i4 ,i5 ,i6 ,i7,adr0,adr1,adr2;  
	wire o0 ,o1 ,o2 ,o3 ,o4 ,o5 ,o6 ,o7;
	memory uut (
	.clk(clk),
	.op(op),
	.select(select),
	.adr0(adr0),.adr1(adr1),.adr2(adr2),
	.i0(i0),.i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6),.i7(i7),
	.o0(o0),.o1(o1),.o2(o2),.o3(o3),.o4(o4),.o5(o5),.o6(o6),.o7(o7)
	);
	
	initial begin
	 clk = 0;


//writing of word engineer into memory	 
	 adr0=0; adr1=0; adr2=0; select=1; op=1;
	 i0=0; i1=1; i2=1; i3=0; i4=0; i5=1; i6=0; i7=1; #20;
	 adr0=0; adr1=0; adr2=1; #10;
	 i0=0; i1=1; i2=1; i3=0; i4=1; i5=1; i6=1; i7=0; #20;
	 adr0=0; adr1=1; adr2=0; #10;
	 i0=0; i1=1; i2=1; i3=0; i4=0; i5=1; i6=1; i7=1; #20;
	 adr0=0; adr1=1; adr2=1; #10;
	 i0=0; i1=1; i2=1; i3=0; i4=1; i5=0; i6=0; i7=1; #20;
	 adr0=1; adr1=0; adr2=0; #10;
	 i0=0; i1=1; i2=1; i3=0; i4=1; i5=1; i6=1; i7=0; #20; 
	 adr0=1; adr1=0; adr2=1; #10;
	 i0=0; i1=1; i2=1; i3=0; i4=0; i5=1; i6=0; i7=1; #20;
	 adr0=1; adr1=1; adr2=0; #10;
	 i0=0; i1=1; i2=1; i3=0; i4=0; i5=1; i6=0; i7=1; #20;
	 adr0=1; adr1=1; adr2=1; #10;
	 i0=0; i1=1; i2=1; i3=1; i4=0; i5=0; i6=1; i7=0; #20; 

//read-out
	 select=1; op=0; 
	 adr0=0; adr1=0; adr2=0; #10;
	 adr0=0; adr1=0; adr2=1; #10;
	 adr0=0; adr1=1; adr2=0; #10;
	 adr0=0; adr1=1; adr2=1; #10;
	 adr0=1; adr1=0; adr2=0; #10;
	 adr0=1; adr1=0; adr2=1; #10;
	 adr0=1; adr1=1; adr2=0; #10;
	 adr0=1; adr1=1; adr2=1; #10;
	 select=0; op=0;
	end	 
//clock generation	
	always begin
    #5 clk = ~clk; 
    end	  
	
endmodule