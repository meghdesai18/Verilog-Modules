`timescale 1ps/1ps
`include "adder.v"

module adder_tb;
    
    reg a,b;
    wire c,s;
    
    adder DUT(.a(a), .b(b), .c(c), .s(s));

    initial begin
        $monitor("a=%b, b=%b, c=%b, s=%b", a,b,c,s);
    end

    initial begin
        $dumpfile("adder_tb.vcd");
        $dumpvars(0,adder_tb);

        #20 a=1; b=0;
        #20 a=1; b=1;
        #20 a=0; b=0;
        #20 a=0; b=1;
        #20 $finish;



    end

    
endmodule