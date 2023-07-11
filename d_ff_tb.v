`include "example.v"

module testbench ;
wire q,q_bar;
reg d,clk,rst;
    d_ff D(d,rst,clk,q,q_bar);
     initial
        begin
        clk=1'b0;
        end
        always #5 clk=~clk;
        initial 
          begin 
            $monitor("Time=%d , d=%b , q=%b " , $time,d,q);

            #10 rst=1;
            #10 rst=0;
                 #10 d=0; 
                 #10 d=1; 
                 #10 d=1;
                 #10 d=0;
                 $finish;
          end
endmodule