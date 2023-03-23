module reg_m(
  input clk, rst_b, c0, [7:0] ibus,
  output reg [7:0] q
);

always@(posedge clk, negedge rst_b) begin
  if(!rst_b) // if rst_b == 0
    q <= 0;
  else if (c0) // load activ => incarcam de pe inbus in registru
    q <= ibus;
  end
endmodule

