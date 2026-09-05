// Code your testbench here
// or browse Examples
module rca_4bit_tb();
  reg [3:0] a,b;
  reg cin;
  wire[4:0]s;
  reg[4:0]check;
  rca_4bit DUT(a,b,cin,s);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, rca_4bit_tb);
  end
  initial repeat(10) begin
   
    a = $random;
    b = $random;
    cin = $random;
    check = a+b+cin;
    #10;
    $display($time, " %d+%d+%d=%d(%d)", a,b,cin,s,check);
  end
endmodule
