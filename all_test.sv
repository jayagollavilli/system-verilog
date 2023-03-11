`ifndef"ALL_TEST"
`define"ALL_TEST"
`include"all_intf.sv"
program prog(intf vif);
`include"all_trans.sv"
`include"all_gen.sv"
`include"all_driver.sv"
`include"all_monin.sv"
`include"all_monout.sv"
generator gen;
scoreboard sb;
mon_in min;
mon_out mout;
initial begin 
  gen =new(vif);
  sb = new();
  min=new(vif,sb);
mout=new(vif,sb);
repeat(10)begin
gen.stimulus();
min.in_mon();
#1
mout.out_mon();
end
end
endprogram
`endif  
 
