`include "jk_ff.v"

module jk_ff_tb();
    reg j,k,clk;
    wire q,qb;

    jk_ff dut(q,qb,j,k,clk);

    initial begin
        clk= 1'b0;
    end
    
    always #5 clk=~clk;

    initial begin
        {j,k} = 2'b00; #10;
    end

    initial begin
        j=1'b0; k=1'b0; #10;
        j=1'b1; k=1'b0; #10;
        j=1'b0; k=1'b0; #10;
        j=1'b0; k=1'b1; #10;
        j=1'b0; k=1'b0;
    end

    initial begin
        $monitor("input j=%b, k=%b, output q=%b, qb=%b", j,k,q,qb);

        #100 $finish;
    end

    initial begin
        $dumpfile("jk_ff_tb.vcd");
        $dumpvars(0,jk_ff_tb);
    end

endmodule