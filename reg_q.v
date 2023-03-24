module reg_q(
  input clk, rst_b, c1, c4, c7, [7:0] ibus,
  input a_lsb,
  output reg q_lsb,
  output reg [7:0] q, obus
);


always @(posedge clk, negedge rst_b) begin
  if(!rst_b)
    q <= 0;
  else if (c1)
    q <= ibus;
  else if(c4) 
    begin
        q_lsb <= q[0];
        q <= (q >> 1);
        q[7] <= a_lsb;
      end
end

always @(*) begin
  if(c7) 
    obus <= q;
  else obus <= 8'bz;
  
end

endmodule
