`timescale 1ns / 1ps



module ALU(
    input [31:0] a,  
    input [31:0] b, 
    input [3:0] alu_control,
    output zero, 
    output reg [31:0] alu_result);  
    
 always @(*)
 begin   
      case(alu_control)  
      4'b0000: alu_result = a & b; // and  
      4'b0001: alu_result = a | b; // or  
      4'b0010: alu_result = a + b; // add  
      4'b0110: alu_result = a - b; // sub  
      default: alu_result = a + b; // add  
      endcase  
 end  
 assign zero = (alu_result==32'd0) ? 1'b1: 1'b0;

endmodule
