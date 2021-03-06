/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module pushB_4 (
    input clk,
    input rst,
    input buttonU,
    input buttonD,
    input buttonL,
    input buttonR,
    input buttonY,
    input buttonN,
    output reg up,
    output reg down,
    output reg right,
    output reg left,
    output reg yes,
    output reg no
  );
  
  
  
  wire [1-1:0] M_counter_countUp;
  wire [1-1:0] M_counter_countDown;
  wire [1-1:0] M_counter_countLeft;
  wire [1-1:0] M_counter_countRight;
  wire [1-1:0] M_counter_countYes;
  wire [1-1:0] M_counter_countNo;
  reg [1-1:0] M_counter_buttonU;
  reg [1-1:0] M_counter_buttonD;
  reg [1-1:0] M_counter_buttonL;
  reg [1-1:0] M_counter_buttonR;
  reg [1-1:0] M_counter_buttonY;
  reg [1-1:0] M_counter_buttonN;
  counter_13 counter (
    .clk(clk),
    .rst(rst),
    .buttonU(M_counter_buttonU),
    .buttonD(M_counter_buttonD),
    .buttonL(M_counter_buttonL),
    .buttonR(M_counter_buttonR),
    .buttonY(M_counter_buttonY),
    .buttonN(M_counter_buttonN),
    .countUp(M_counter_countUp),
    .countDown(M_counter_countDown),
    .countLeft(M_counter_countLeft),
    .countRight(M_counter_countRight),
    .countYes(M_counter_countYes),
    .countNo(M_counter_countNo)
  );
  
  always @* begin
    M_counter_buttonU = ~buttonU;
    up = M_counter_countUp;
    M_counter_buttonD = ~buttonD;
    down = M_counter_countDown;
    M_counter_buttonL = ~buttonL;
    left = M_counter_countLeft;
    M_counter_buttonR = ~buttonR;
    right = M_counter_countRight;
    M_counter_buttonY = ~buttonY;
    yes = M_counter_countYes;
    M_counter_buttonN = ~buttonN;
    no = M_counter_countNo;
  end
endmodule
