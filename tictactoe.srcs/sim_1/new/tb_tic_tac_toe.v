`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2019 23:09:25
// Design Name: 
// Module Name: tb_tic_tac_toe
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


module tb_tic_tac_toe;
reg clock;
 reg reset;
 reg play;
 reg pc;
 reg [3:0] computer_position;
 reg [3:0] player_position;
 wire [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,who;
 tic_tac_toe_game mycode(clock,reset,play,pc,computer_position,player_position,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,who);
 initial begin
 clock=0;
 forever #5 clock=~clock;
 end
 initial begin
 play=0;
 reset = 1;
  computer_position = 0;
  player_position = 0;
  pc = 0;
  #100;
  reset = 0;
  #100;
  play = 1;
  pc = 0;
  computer_position = 4;
  player_position = 0;
  #50;
  pc = 1;
  play = 0;
  #100;
  reset = 0;
  play = 1;
  pc = 0;
  computer_position = 8;
  player_position = 1;
  #50;
  pc = 1;
  play = 0;  
  #100;
  reset = 0;
  play = 1;
  pc = 0;
  computer_position = 6;
  player_position = 2;
  #50;
  pc = 1;
  play = 0; 
  #50
  pc = 0;
  play = 0;   
  end
endmodule
