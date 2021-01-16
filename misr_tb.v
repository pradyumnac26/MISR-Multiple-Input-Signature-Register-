module misr_tb();
 reg clk1,rst;
 reg [4:0]m;
reg [4:0]count;
misr dut (clk1,rst,m);
          initial
           begin
             m = 5'b0;
             clk1 = 1'b0;
             count = 5'b0;
             rst = 1'b0;
             end
     
        initial
         begin
           #1
           m[4:0] = 5'b10111;
           clk1 = clk1 +1;
           #1
           clk1 = clk1+1;
           
           #1
           m[4:0] = 5'b01001;
           clk1 = clk1 +1;
           #1
           clk1 = clk1+1;
           
           #1
           m[4:0] = 5'b01110;
           clk1 = clk1 +1;
           #1
           clk1 = clk1+1;
           
           #1
           m[4:0] = 5'b01101;
           clk1 = clk1 +1;
           #1
           clk1 = clk1+1;
           
           #1
           m[4:0] = 5'b10010;
           clk1 = clk1 +1;
           #1
           clk1 = clk1+1;
           
           #1
           m[4:0] = 5'b10010;
           clk1 = clk1 +1;
           #1
           clk1 = clk1+1;
           #1
           
           clk1 = clk1+1;
           #1
           clk1 = clk1+1; //at 0 presently
           #1
           rst = 1'b1;
           m[4:0] = 5'b0;
           #1
           clk1 = clk1+1;
           #1
           clk1 = clk1 +1;
           rst = 1'b0;
       
           #1
           m[4:0] = 5'b11110;
           clk1 = clk1 +1;
           #1
           clk1 = clk1+1;
           
           #1
           m[4:0] = 5'b01100;
           clk1 = clk1 +1;
           #1
           clk1 = clk1+1;
           
           #1
           m[4:0] = 5'b01111;
           clk1 = clk1 +1;
           #1
           clk1 = clk1+1;
           
           #1
           m[4:0] = 5'b01011;
           clk1 = clk1 +1;
           #1
           clk1 = clk1+1;
           
           #1
           m[4:0] = 5'b01111;
           clk1 = clk1 +1;
           #1
           clk1 = clk1+1;
           
           #1
           m[4:0] = 5'b10010;
           clk1 = clk1 +1;
           #1
           clk1 = clk1+1;
           #1
             clk1 = clk1 +1;
           #1
           clk1 = clk1+1;
         end
      

endmodule
