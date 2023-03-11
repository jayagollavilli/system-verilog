`ifndef"ALL_TOP"
`define"ALL_TOP"
`include"all_intf.sv"
`include"all_test.sv"
module top;
  intf interf();
  prog tb(interf);
  tb dut(interf.a,interf.b,interf.c);
endmodule:top
`endif

