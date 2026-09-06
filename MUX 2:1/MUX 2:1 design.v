// Code your design here
module MUX_2_1(input I0,I1,sel,output y);
  assign y = sel ? I1 : I0;
endmodule
