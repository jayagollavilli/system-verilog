`ifndef"ALL_DRIVER"
`define"ALL_DRIVER"
`include"all_trans.sv"
class drive;
  virtual intf vif;
  transaction trans;
  function new(virtual intf vif);
    this.vif=vif;
  endfunction:new
  task driver(transaction trans);
    //transaction trans;
    vif.a=trans.a;
    vif.b=trans.b;
    trans.print("driver");
  endtask:driver
endclass:drive
`endif
