module half_sub(input a,b,
               output diff,bor);

  assign diff = a ^ b;
  assign bor = ~a & b;
  
  
endmodule

module tb();
  reg a;
  reg b;
  wire diff;
  wire bor;
  
  half_sub dut (a,b,diff,bor);
  
  initial begin
    $monitor("At time:%0t, a: %0b, b:%0b,diff: %0b,bor: %0b",$time,a,b,diff,bor);
    #1 a = 0;b=0;
    #1 a=0;b=1;
    #1 a = 1; b=0;
    #1 a=1;b=1;  
  end
  
endmodule
