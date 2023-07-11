
module pulse_3x(
  
  input pulse, 
  input clk, rst,
  output pulse_3x
);
  
  reg pulse_1;
  reg pulse_2;
  
  always @(posedge clk or posedge rst) begin
    
    if(rst) begin
      pulse_1=0;
      pulse_2=0;

    end
    
    else begin
      pulse_1<=pulse;
      pulse_2<=pulse_1;
    end 
    	
  end
  
  assign pulse_3x=pulse|pulse_1|pulse_2;
  
  
endmodule