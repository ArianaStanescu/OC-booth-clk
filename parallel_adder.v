module parallel_adder(
  input [7  : 0] x, y, //x=M iesit din xor; y=A
  input c3,
  output  [8 : 0] out
);

wire [8 : 0] carry;
//wire [7:0] out_xor;

assign carry[0] = c3;


generate 
  genvar j;
    for(j = 0; j < 8; j = j + 1)
      begin : vect
        fac inst_fac(.x(x[j]), .y(y[j]), .out(out[j]), .cin(carry[j]), .cout(carry[j + 1]));
    end
endgenerate

//assign out[k] = carry[k];


endmodule
