`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2026 08:05:02 PM
// Design Name: 
// Module Name: behavioral_8to1_mux
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


module behavioral_8to1_mux(
    input [7:0] i,
    input [2:0] s,
    output reg b
);

always @(s or i)
begin
    case(s)
        3'b000 : b = i[0];
        3'b001 : b = i[1];
        3'b010 : b = i[2];
        3'b011 : b = i[3];
        3'b100 : b = i[4];
        3'b101 : b = i[5];
        3'b110 : b = i[6];
        3'b111 : b = i[7];
        default : b = 3'bxxx;
    endcase
end
endmodule
