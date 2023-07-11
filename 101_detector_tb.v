`include "101_detector.v"

module testbench();
  reg in,clk,rst;
  wire det;
  detector DUT (in,clk,rst,det);
  initial 
    begin 
      $dumpfile("detector.vcd");
      $dumpvars(0,testbench);
      clk=1'b0;rst=1'b1;
      #15 rst=1'b0;
    end
  always
    #5 clk=~clk;
  initial
    begin
      $monitor("%d %b %b %b", $time, in, rst, det);
      #10 in=0; #10 in=0; #10 in=1;#10 in=1;
      #10 in=0; #10 in=1; #10 in=1; #10 in=0;
      #10 in=0; #10 in=1; #10 in=1; #10 in=0;
      #10 $finish;
    end
endmodule	