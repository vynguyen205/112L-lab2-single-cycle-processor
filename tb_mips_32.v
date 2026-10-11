`timescale 1ns / 1ps

module tb_mips_32;
reg clk;  
      reg reset;  
      // Outputs  

      wire [31:0] result;
      // Instantiate the Unit Under Test (UUT)  
      mips_32 uut (  
           .clk(clk),   
           .reset(reset),     
           .result(result)  
      );  

      initial begin  
           clk = 0;  
           forever #10 clk = ~clk;  
      end  

      initial begin  
           // Initialize Inputs  
           reset = 1;  
           // Wait 100 ns for global reset to finish  
           #100;  
           reset = 0;  
           // Add stimulus here  
      end  
endmodule
