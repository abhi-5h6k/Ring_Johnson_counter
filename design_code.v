`timescale 1ns / 1ps

module ring_johnson_cnt(
       input clk,rst,
       output reg [1:0]doutr,doutj
    );
    
  /////// Ring Counter 
    always@(posedge clk)
    begin
        if(rst == 1'b1)
         doutr <= 2'b01;
        else
           begin
           doutr[1] <= doutr[0];
           doutr[0] <= doutr[1];
           end
        end
        
  /////// Johnson Counter
     always@(posedge clk)
        begin
           if(rst == 1'b1)
               begin
                doutj <= 2'b00;
               end
           else
               begin
                 doutj[1] <= ~doutj[0];
                 doutj[0] <= doutj[1];
               end
        end
endmodule
