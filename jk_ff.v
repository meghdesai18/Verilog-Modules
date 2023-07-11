module jk_ff(q,qb,j,k,clk); 
    input j,k,clk;
    output reg q;
    output qb;

    parameter Hold = 2'b00, ReSet = 2'b01, Set = 2'b10, Toggle = 2'b11;

    assign qb=~q; 

    always @(posedge clk ) begin
        case ({j,k})
            Hold: q<=q;
            ReSet: q<=0;
            Set: q<=1;
            Toggle: q<=~q;  
            
        endcase
    end
    

    
endmodule