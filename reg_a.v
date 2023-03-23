module reg_a(
  input clk, rst_b, c0, c2, c4, 
  input [7:0] sum,
  output reg [7:0] obus, [7:0] q
);

always@(posedge clk, negedge rst_b) begin
  if(!rst_b) begin// if rst_b == 0
    q <= 0;
  else if (c0)
    q <= 0;
  else if(c2)
    sum <= sum +
  end
end

endmodule

