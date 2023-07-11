module d_ff(
    d,rst,clk,q,q_bar
);
input d,clk,rst;
output reg q;
output q_bar;

assign q_bar=~q;

always @(posedge clk or posedge rst)begin
    if(rst==1) begin
      q<=0;
    end
    else begin
      if(d==0) q<=0;
      else if(d==1) q<=1;
    end
end
endmodule