`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2026 11:00:06 PM
// Design Name: 
// Module Name: structural_8to1_mux
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


module structural_8to1_mux(
input [7:0] i,
input [2:0] s,
output y
);

wire [2:0] ns;
wire [7:0] p;

not a(ns[0], s[0]);
not a1(ns[1], s[1]);
not a2(ns[2], s[2]);

and b(p[0], ns[2], ns[1], ns[0], i[0]);
and b1(p[1], ns[2], ns[1], s[0], i[1]);
and b2(p[2], ns[2], s[1], ns[0], i[2]);
and b3(p[3], ns[2], s[1], s[0], i[3]);
and b4(p[4], s[2], ns[1], ns[0], i[4]);
and b5(p[5], s[2], ns[1], s[0], i[5]);
and b6(p[6], s[2], s[1], ns[0], i[6]);
and b7(p[7], s[2], s[1], s[0], i[7]);

or c(y, p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7]);

endmodule
