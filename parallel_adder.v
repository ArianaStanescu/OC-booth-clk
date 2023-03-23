module parallel_adder#(parameter k = 8)(
  input [k-1  : 0] x, y, //x=M; y=A
  input c3,
  output  [k : 0] out
);

wire [k : 0] carry;
wire [k-1:0] out_xor;



generate 
  genvar i;
    for(i = 0; i < k; i = i + 1)
      begin : vecti
        xor_m_c3 inst_xor(.m(x[i]), .cin(c3), .out(out_xor[i]));
    end
endgenerate

assign carry[0] = c3;


generate 
  genvar j;
    for(j = 0; j < k; j = j + 1)
      begin : vectj
        fac inst_fac(.x(out_xor[j]), .y(y[j]), .out(out[j]), .cin(carry[j]), .cout(carry[j + 1]));
    end
endgenerate

//assign out[k] = carry[k];


endmodule
