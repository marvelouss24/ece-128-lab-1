`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2026 01:55:13 PM
// Design Name: 
// Module Name: dataflow_8to1_mux
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


module dataflow_8to1_mux(
input [7:0] i,
input [2:0] s,
output b
   );

assign b = (~s[2]&~s[1]&~s[0]&i[0]) | (~s[2]&~s[1]&s[0]&i[1]) | (~s[2]&s[1]&~s[0]&i[2]) | (~s[2]&s[1]&s[0]&i[3]) | (s[2]&~s[1]&~s[0]&i[4]) | (s[2]&~s[1]&s[0]&i[5]) | (s[2]&s[1]&~s[0]&i[6]) | (s[2]&s[1]&s[0]&i[7]);

endmodule
