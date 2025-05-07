module full_adder(input a,b,cin,
                 output sum,cout);
  /*
  always @(a,b) begin
    sum = a ^ b;
    cout = a & b;
  end
  */
  assign sum = a ^ b ^ cin;
  assign cout = a & b | b & cin | cin & a;
  
endmodule


module tb();
  reg a;
  reg b;
  reg cin;
  wire sum;
  wire cout;
  
  full_adder dut (a,b,cin,sum,cout);
  
  initial begin
    $monitor("At time:%0t, a: %0b, b:%0b, cin:%b,sum: %0b,cout: %0b",$time,a,b,cin,sum,cout);
    #1 a = 0;b=0;cin=0;
    #1 a=0;b=1;cin=1;
    #1 a = 1; b=0;cin=0;
    #1 a=1;b=1;cin=1;  
  end
  
endmodule
