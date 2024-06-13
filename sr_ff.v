module sr_ff(clk,reset,s,r,q,qbar);
input s,r,clk,reset;
output reg q,qbar;
always@(posedge clk)
begin
   if(reset)
    q<=1'b0;
   else
   begin
   if(s==0&&r==0)
    q<=q;
   else if(s==0&&r==1)
    q<=1'b0;
   else if(s==1&&r==0)
    q<=1'b1;
   else if(s==1&&r==1)
    q<=1'bx;
  end
   assign qbar=~q;
end
endmodule
