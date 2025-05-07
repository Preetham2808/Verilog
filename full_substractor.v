module full_sub(input a,b,cin,
               output diff,bor);

  assign diff = a ^ b ^ cin;
  assign bor = (~a & (b|cin)) | b & cin;
  
  
endmodule


module tb();
  reg a;
  reg b;
  reg cin;
  wire diff;
  wire bor;
  
  full_sub dut (a,b,cin,diff,bor);
  
  initial begin
    $monitor("At time:%0t, a: %0b, b:%0b, cin:%b,diff: %0b,bor: %0b",$time,a,b,cin,diff,bor);
    #1 a = 0;b=0;cin=0;
    #1 a=0;b=1;cin=1;
    #1 a = 1; b=0;cin=0;
    #1 a=1;b=1;cin=1;  
  end
  
endmodule
