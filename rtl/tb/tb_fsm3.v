module testbench;

	reg op,select,clk;
	wire rw,valid;  
	
	fsm3 uut (
	.clk(clk),
	.op(op),
	.select(select),
	.rw(rw),
	.valid(valid));
	
	initial begin
	//$monitor("Time=%0d op=%b, select=%b, clk=%b, rw=%b, valid=%b", $time, op,select,clk,rw,valid); 
	
	clk = 0;
    op = 0; select = 0; #10; 
	op = 1; select = 0; #10; 
	op = 0; select = 1; #10;
	op = 0; select = 1; #10; 
	op = 1; select = 0; #10; 
	op = 1; select = 0; #10;	
	op = 1; select = 1; #10; 
	op = 1; select = 1; #10;
	op = 0; select = 1; #10;
	op = 0; select = 0; #10;
	end

   
	
	always begin
    #5 clk = ~clk; 
    end
	 // $finish; 
endmodule