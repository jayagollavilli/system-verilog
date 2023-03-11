`ifndef "ALL_GATE"
`define "ALL_GATE"
module tb(a,b,c);//logic for the code
  input a,b;
  output [6:0]c;
  assign c[0]=a&b;
  assign c[1]=a|b;
  assign c[2]=a^b;
  assign c[3]=~(a&b);
  assign c[4]=~(a|b);
  assign c[5]=~(a^b);
  assign c[6]=~a;
endmodule:tb
`endif

