module control_unit(
  input clk, rst_b, bgn, q_1, q0, count7, // q_1 e q[-1] adica iesirea din reg_q_1, q0 e ultimul bit din Q adica q0 = Q[0] 
  output c0, c1, c2, c3, c4, c5, c6, stop // fin = 
);



always@(posedge clk, negedge rst_b) begin //aici trb FSM
  if(q0 == 0 && q_1 = 1) // +M
    
  else if(q0 == 1 && q_1 = 0) //-M
    
  else // shiftare
