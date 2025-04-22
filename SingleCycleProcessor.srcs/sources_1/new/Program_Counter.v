`timescale 1ns / 1ps

module Program_Counter(
    input clk,
    input reset,
    input [63:0] PC_In,
    input stall,
    output reg [63:0] PC_Out
    );
    
    
    always @(posedge clk) begin
        if (reset == 1) begin
            PC_Out <= 0;
        end
        else if (stall !== 1'b1) begin
            PC_Out <= PC_In;
        end
    end
endmodule
