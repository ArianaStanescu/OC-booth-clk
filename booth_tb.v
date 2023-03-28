module booth_tb;
  reg clk, bgn, rst_b;
  reg[7:0] ibus;
  wire stop;
  wire[7:0] obus;
  wire [7:0] m, a, out_parallel, q;
  initial begin
    
    #10
  clk = 0;
  rst_b = 0;
  bgn = 0; 
  //stop = 0;
  
  #10
  clk = 1;
  rst_b = 1;
  
  #10
  clk = 0;
  
  #10 //ajungem in S1
  clk = 1;
  bgn = 1;
  ibus = 2;
  
  #10
  clk = 0;
  
  #10
  clk = 1; //ajugem in startea S2
  ibus = 3;
  
  #10
  clk = 0;
  
  #10 //ajungem in S3
  clk = 1;
  
  #10
  clk = 0;
  
  #10
  clk = 1; //ajungem in S5
  
   #10
  clk = 0;
  
  #10
  clk = 1; //ajungem in S2
  
  #10
  clk = 0;
  
  #10 //ajungem in S4
  clk = 1;
  
  #10
  clk = 0;
  
  #10
  clk = 1; //ajungem in S5
  
  #10
  clk = 0;
  
  #10
  clk = 1; //ajungem in S6
  
  #10
  clk = 0;
  
  #10
  clk = 1; //ajungem in S7
  
  #10
  clk = 0;
  
  #10
  clk = 1; //ajungem in S7
    
  end
  
	//always
//	begin
	
	//	clk=~clk;
	//	#20;
	
	//end
  
booth legatura(.q(q), .clk(clk), .bgn(bgn), .rst_b(rst_b), .ibus(ibus), .obus(obus), .stop(stop), .a(a), .m(m), .out_parallel(out_parallel));
endmodule
