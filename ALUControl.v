`timescale 1ns / 1ps



module ALUControl(
    input [1:0] ALUOp, 
    input [5:0] Function,
    output reg[3:0] ALU_Control);  

    wire [7:0] ALUControlIn;  
    
    assign ALUControlIn = {ALUOp,Function};  
    
    always @(ALUControlIn)  
     
    casex (ALUControlIn)  
        8'b1x100100: ALU_Control=4'b0000;  
        8'b10100101: ALU_Control=4'b0001;  
        8'b00xxxxxx: ALU_Control=4'b0010; 
        8'b10100000: ALU_Control=4'b0010;
        8'b10100010: ALU_Control=4'b0110;  
        default: ALU_Control=4'b0000;  
    endcase  
endmodule
