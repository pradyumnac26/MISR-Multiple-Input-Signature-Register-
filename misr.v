

module misr(clk,rst,m);
input clk;
input rst;
input [4:0] m;
reg q4,q3,q2,q1,q0;
reg [4:0] count;
reg [4:0] disp;
    initial begin
        q0 = 1'b0;
        q1 = 1'b0;
        q2 = 1'b0;
        q3 = 1'b0;
        q4 = 1'b0;
        count = 5'b0;
    end
        always @(posedge clk)
        begin
         if(rst==1)
         begin
             q0=1'b0;
             q1=1'b0;
             q2=1'b0;
             q3=1'b0;
             q4=1'b0;
             end
             end
    always @(posedge clk &&rst == 0)
    begin
        q0<=q4^m[0];
        q1<=q0^q4^m[1];
        q2<=q1^m[2];
        q3<=q2^m[3]^q4;
        q4<=q3^q4^m[4];
    end
    
    always @(posedge clk)
        begin
         disp = {q0,q1,q2,q3,q4}; 
         $display("%b",disp);
           
    end
endmodule



