module reg_a(
  input clk, rst_b, c0, c2, c4, c6, //c2 e pt suma
  input [7:0] sum,
  output reg a_lsb,
  output reg [7:0] obus, [7:0] q
);

reg a_msb;

always@(posedge clk, negedge rst_b) begin
  if(!rst_b) // if rst_b == 0
    q <= 0;
  else if (c0)
    q <= 0;
    //c2
  else if(c4) 
  begin
    a_lsb <= q[0];
    a_msb <= q[7];
    q <= (q >> 1);
    q[7] <= a_msb;
  end

    
end

always @(*) begin
  if(c6) 
    obus <= q;
  else obus <= 8'bz;
end
endmodule

