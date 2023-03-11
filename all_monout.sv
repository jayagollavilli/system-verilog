`ifndef"ALL_MONOUT"
`define"ALL_MONOUT"
`include"all_scb.sv"
class mon_out;
  scoreboard sb;
  virtual intf vif;
  function new(virtual intf vif,scoreboard sb);
    this.sb=sb;
    this.vif=vif;
  endfunction:new
  task out_mon();
    transaction trans=new();
    #1
    trans.a=vif.a;
    trans.b=vif.b;
    sb.main(trans);
  endtask:out_mon
endclass:mon_out
`endif



