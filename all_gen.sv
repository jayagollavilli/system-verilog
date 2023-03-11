`ifndef "ALL_GEN"
`define "ALL_GEN"
`include"all_trans.sv"  
`include"all_driver.sv"
class generator;//creating class for the generator block
  transaction trans;// creating handle for the transaction block
  drive drv;//creating handle for the driver block
  function new(virtual intf vif);//creating virtual interface for actual interface with interface name
    drv=new(vif);//passing vif into the driver handle
  endfunction:new
  task stimulus();//creating task for generator
    trans=new();//creating memory 
    
    repeat(1) begin
          if(!trans.randomize);//randomising the inputs
            drv.driver(trans);//putting thoserandomised  value into the driver from transaction block here driver(task name of the driver)
       trans.print("generator");//printing the values at generator stage
      end
    endtask:stimulus
  endclass:generator
  `endif

