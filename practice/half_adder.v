// Code your design here
module half_adder(input a,b,
                 output sum,cout);
  /*
  always @(a,b) begin
    sum = a ^ b;
    cout = a & b;
  end
  */
  assign sum = a ^ b;
  assign cout = a & b;
  
endmodule


module tb();
  reg a;
  reg b;
  wire sum;
  wire cout;
  
  half_adder dut (a,b,sum,cout);
  
  initial begin
    $monitor("At time:%0t, a: %0b, b:%0b,sum: %0b,cout: %0b",$time,a,b,sum,cout);
    #1 a = 0;b=0;
    #1 a=0;b=1;
    #1 a = 1; b=0;
    #1 a=1;b=1;  
  end
  
endmodule
