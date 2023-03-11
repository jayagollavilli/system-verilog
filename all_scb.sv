`ifndef"ALL_SCB"
`define"ALL_SCB"
`include"all_trans.sv"
class scoreboard;
//  bit[6:0]c_exp;
task main(transaction trans);
  if((trans.a&trans.b)==trans.c[0] && (trans.a|trans.b)==trans.c[1] && (trans.a^trans.b)==trans.c[2] && ~(trans.a&trans.b)==trans.c[3] && ~(trans.a|trans.b)==trans.c[4] && ~(trans.a&trans.b)==trans.c[5] && ~trans.a ==trans.c[6])
    $display("pass");
  else
    $display("fail");
    trans.print("scoreboard");
  endtask:main
endclass:scoreboard
`endif
