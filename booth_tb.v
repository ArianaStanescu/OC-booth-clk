
module booth_tb;
  reg clk, bgn, rst_b;
  reg[7:0] ibus;
  wire stop;
  wire[7:0] obus;
  
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
  ibus = 32;
  
  #10
  clk = 0;
  
  #10
  clk = 1; //ajugem in startea S2
  ibus = 85;
  
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
  
  
	always
  begin
	
		clk=~clk;
  	#10;
	
	end
	
  
booth legatura( .clk(clk), .bgn(bgn), .rst_b(rst_b), .ibus(ibus), .obus(obus), .stop(stop));
endmodule
/*
module booth_tb;
  reg clk, bgn, rst_b;
  reg[7:0] ibus;
  wire stop;
  wire[7:0] obus;
  
  initial begin
    clk = 0;
    bgn = 1;
    rst_b = 1;
    
    #20
    ibus = 2;
    #20
    ibus = 3;
    clk = 1;
    
  end
  
  
	always
  begin
	
		clk=~clk;
  	#20;
	
	end
	
  
booth legatura( .clk(clk), .bgn(bgn), .rst_b(rst_b), .ibus(ibus), .obus(obus), .stop(stop));
endmodule
*/