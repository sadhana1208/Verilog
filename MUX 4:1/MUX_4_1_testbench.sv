// Code your testbench here
// or browse Examples
module MUX_4_1_tb();
  reg I0,I1,I2,I3;
  reg [0:2] sel;
  wire y;
  
  MUX_4_1 DUT(I0,I1,I2,I3,sel,y);
  
  initial begin
    I0 = 1'b1;
    I1 = 1'b0;
    I2 = 1'b1;
    I3 = 1'b0;
    
    sel = 2'b00;
    #10;
    sel = 2'b01;
    #10;
    sel = 2'b10;
    #10;
    sel = 2'b11;
    #10;
    
    $finish();
  end
  initial begin
    $dumpfile("MUX_4_1_wave.vcd");
    $dumpvars();
  end
endmodule
