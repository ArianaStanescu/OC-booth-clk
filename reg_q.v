module reg_q(
  input clk, rst_b, c1, c4, c7, [7:0] ibus,
  output reg [7:0] q
);

always @(posedge clk, negedge rst_b) begin
  if(!rst_b)
    q <= 0;
  else if (c1)
    q <= ibus;
end
  
endmodule
