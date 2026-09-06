// Code your design here
module MUX_4_1(input I0,I1,I2,I3, input reg [0:2]sel, output reg y);
  always @(*) begin
    case(sel)
      2'b00: y<=I0;
      2'b01: y<=I1;
      2'b10: y<=I2;
      2'b11: y<=I3;
    endcase
  end
endmodule
