// Code your testbench here
// or browse Examples
module MUX_2_1_tb();
  reg I0,I1,sel;
  wire y;
  MUX_2_1 DUT(I0,I1,sel,y);
  initial begin
    I0 = 1; I1 = 0; sel = 0;
    #10;
    I0 = 0; I1 = 1; sel = 0;
    #10;
    I0 = 1; I1 = 0; sel = 1;
    #10;
    I0 = 0; I1 = 1; sel = 1;
    #10;
    I0 = 0; I1 = 0; sel = 0;
    #10;
    I0 = 0; I1 = 0; sel = 1;
    #10;
    I0 = 1; I1 = 1; sel = 0;
    #10;
    I0 = 1; I1 = 1; sel = 1;
    $finish;
  end
  initial begin
    $dumpfile("mux2to1wave.vcd");
    $dumpvars();
  end
endmodule
