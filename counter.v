module counter(clock, clear, count);

    parameter N=7;
    input clock, clear;
    output reg [0:N] count;

    always @(negedge clock ) begin

        if(clear)
            count<=0;
        else begin
            count<=count+1; 
        end
        
    end


endmodule