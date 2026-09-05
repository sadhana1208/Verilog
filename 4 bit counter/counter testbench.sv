// Code your testbench here
// or browse Examples
module count_tb();
  reg clk;
  reg rst;
  wire [3:0] count;
  counter DUT(clk,rst,count);
  initial
    begin
      $monitor($time,"rst = %b, count = %d", rst, count);
      $dumpfile("dump.vcd");
      $dumpvars(0,count_tb);
      clk = 1'b1;
      rst = 1'b1;
      #10;
      rst = 1'b0;
      #10;
      rst = 1'b1;
      #10;
      rst = 1'b0;
      #100;
      $finish;
    end
  always #5 clk = ~clk;
  
endmodule