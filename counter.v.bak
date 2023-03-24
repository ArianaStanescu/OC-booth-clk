module counter(
  input clk, rst_b, c0, c5,
  output count7
);

reg [2:0] count;

always@(posedge clk, negedge rst_b) begin
  if(!rst_b) begin
    //count <= 0;
    count <=0;
  end
  else if (c0) begin // load activ => incarcam de pe inbus in registru
    //count <= 0;
    count <= count + 1;
  end
end

//count7 <= count;
assign count7 = count[0] & count[1] & count[2];

endmodule
