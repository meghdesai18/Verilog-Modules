module detector(in,clk,rst,det);
  
  input in,clk,rst;
  output reg det;
  
  parameter s0=0;
  parameter s1=1;
  parameter s2=2;
  
  reg [1:0] ps,ns;
  
  always @(posedge clk or posedge rst) begin
    
    if(rst)
      ps<=s0;
      
      else ps<=ns;   
  end
       
       always @(ps or in) begin
         case(ps)
           
           s0: begin 
                  ns <=in ? s1:s0; 
                  det<=0; 
           end
           s1: begin 
                  ns <= in ? s2:s1; det<=0; 
           end
           s2: begin 
                  ns <= in ? s1:s0; 
                  det<= in ? 1:0; 
           end
            
         
         endcase
       end
       
  
endmodule