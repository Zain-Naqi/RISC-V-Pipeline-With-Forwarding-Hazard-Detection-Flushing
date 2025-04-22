`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2025 01:33:00 PM
// Design Name: 
// Module Name: ID_EX_Register
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


module ID_EX_Register(
    input clk,
    input flush,
    input Branch,
    input MemRead, 
    input MemtoReg, 
    input MemWrite, 
    input ALUSrc, 
    input RegWrite,
    input [1:0] ALUOp, 
    input [63:0] PC,
    input [63:0] ReadData1, 
    input [63:0] ReadData2, 
    input [63:0] Imm_generated,
    input [4:0] RD,
    input [3:0] funct_in,
    input [4:0] rs1,
    input [4:0] rs2,
     
    output reg Branch_Out, 
    output reg MemRead_Out, 
    output reg MemtoReg_Out, 
    output reg MemWrite_Out, 
    output reg ALUSrc_Out, 
    output reg RegWrite_Out,
    output reg [1:0] ALUOp_Out, 
    output reg [63:0] PC_Out,
    output reg [63:0] ReadData1_Out, 
    output reg [63:0] ReadData2_Out, 
    output reg [63:0] Imm_generated_Out,
    output reg [4:0] RD_Out,
    output reg [3:0] funct_in_Out,
    output reg [4:0] rs1_out,
    output reg [4:0] rs2_out
    );
    
always @(posedge clk) begin
    if (flush == 1'b1) begin
        Branch_Out        <= 1'b0;
        MemRead_Out       <= 1'b0;
        MemtoReg_Out      <= 1'b0;
        MemWrite_Out      <= 1'b0;
        ALUSrc_Out        <= 1'b0;
        RegWrite_Out      <= 1'b0;
        ALUOp_Out         <= 2'b0;
        PC_Out            <= 64'b0;
        ReadData1_Out     <= 64'b0;
        ReadData2_Out     <= 64'b0;
        Imm_generated_Out <= 64'b0;
        RD_Out            <= 5'b0;
        funct_in_Out      <= 4'b0;
        rs1_out           <= 5'b0;
        rs2_out           <= 5'b0;
    end else begin
        Branch_Out        <= Branch;
        MemRead_Out       <= MemRead;
        MemtoReg_Out      <= MemtoReg;
        MemWrite_Out      <= MemWrite;
        ALUSrc_Out        <= ALUSrc;
        RegWrite_Out      <= RegWrite;
        ALUOp_Out         <= ALUOp;
        PC_Out            <= PC;
        ReadData1_Out     <= ReadData1;
        ReadData2_Out     <= ReadData2;
        Imm_generated_Out <= Imm_generated;
        RD_Out            <= RD;
        funct_in_Out      <= funct_in;
        rs1_out           <= rs1;
        rs2_out           <= rs2;
    end
end

endmodule

