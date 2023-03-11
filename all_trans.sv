`ifndef "ALL_TRANS"
`define "ALL_TRANS"
class transaction;//creating class for transaction block
 rand bit a;//ranndomise bits with reputation
 randc bit b;//randomisation without repuation 
      bit [6:0]c;
  function void print(string name);//creating function with no return value for void
   $display("     ");
   $display("%s",name);
    $display("valu of a =%0b/n value of b =%0b/n value of c[0] =%0d/n value of c[1] =%0d/n value of c[2] =%0d/n value of c[3] =%0d value of c[4] =%0d/value of c[5]=%0d/n    value of c[6]=%0d/n",a,b,c[0],c[1],c[2],c[3],c[4],c[5],c[6]);
  endfunction
endclass:transaction
`endif
