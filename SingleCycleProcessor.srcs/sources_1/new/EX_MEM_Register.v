`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2025 01:33:19 PM
// Design Name: 
// Module Name: EX_MEM_Register
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module EX_MEM_Register(
    input clk,
    input flush,
    input Branch, 
    input MemRead, 
    input MemtoReg, 
    input MemWrite, 
    input RegWrite, 
    input ZERO, 
    input LESS,
    input [4:0] RD,
    input [63:0] PC_Shifted, 
    input [63:0] ALU_Result, 
    input [63:0] ReadData2,
    input [2:0] Funct3,
    
    output reg Branch_Out, 
    output reg MemRead_Out, 
    output reg MemtoReg_Out, 
    output reg MemWrite_Out, 
    output reg RegWrite_Out, 
    output reg ZERO_Out,
    output reg LESS_Out,
    output reg [4:0] RD_Out,
    output reg [63:0] PC_Shifted_Out ,
    output reg [63:0] ALU_Result_Out, 
    output reg [63:0] ReadData2_Out,
    output reg [2:0] Funct3_Out
);
    
always @(posedge clk) begin
    if (flush == 1'b1) begin 
        Branch_Out     <= 1'b0;
        MemRead_Out    <= 1'b0;
        MemtoReg_Out   <= 1'b0;
        MemWrite_Out   <= 1'b0;
        RegWrite_Out   <= 1'b0;
        ZERO_Out       <= 1'b0;
        LESS_Out       <= 1'b0;
        PC_Shifted_Out <= 64'b0;
        ALU_Result_Out <= 64'b0;
        ReadData2_Out  <= 64'b0;
        RD_Out         <= 5'b0;
        Funct3_Out     <= 3'b0;
    end else begin
        Branch_Out     <= Branch;
        MemRead_Out    <= MemRead;
        MemtoReg_Out   <= MemtoReg;
        MemWrite_Out   <= MemWrite;
        RegWrite_Out   <= RegWrite;
        ZERO_Out       <= ZERO;
        LESS_Out       <= LESS;
        PC_Shifted_Out <= PC_Shifted;
        ALU_Result_Out <= ALU_Result;
        ReadData2_Out  <= ReadData2;
        RD_Out         <= RD;
        Funct3_Out     <= Funct3;
     end
end

endmodule

