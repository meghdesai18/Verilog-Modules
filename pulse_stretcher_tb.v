module testbench();
  
  reg pulse,clk,rst;
  wire pulse_3x; // pulse_1, pulse_2;
  
  pulse_3x dut(pulse,clk,rst,pulse_3x);
  
  
  always #5 clk=~clk;
  
  initial begin
    $monitor("%b %b %b" , pulse, rst, pulse_3x);
      $dumpfile("dumo.vcd");
    $dumpvars(0,testbench);
  end
  initial begin
    #0 rst=0; pulse=0;clk=0;
    #10 rst=1;
    #7 rst=0;pulse=1;
    #10pulse=0;
    #40 $finish;
  end
  
endmodule