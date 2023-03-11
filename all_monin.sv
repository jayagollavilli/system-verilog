`ifndef"ALL_MONIN"
`define"ALL_MONIN"
`include"all_scb.sv"
class mon_in;
  scoreboard sb;
  virtual intf vif;
  function new(virtual intf vif,scoreboard sb);
    this.sb=sb;
    this.vif=vif;
  endfunction:new
  task in_mon();
    transaction trans=new();
    #1
    trans.a=vif.a;
    trans.b=vif.b;
    sb.main(trans);
  endtask:in_mon
endclass:mon_in
`endif

