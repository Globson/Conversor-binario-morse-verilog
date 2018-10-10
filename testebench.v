module testbench();
  reg a, b, c, d, reset, ready;
  wire s1, s2, s3, s4, s5;
  codificador codificador_0(.a(a), .b(b), .c(c), .d(d), .s1(s1), .s2(s2), .s3(s3), .s4(s4), .s5(s5), .reset(reset), .ready(ready));
  initial begin
    $dumpfile("testdump.vcd");
    $dumpvars(0 ,testbench);
    $display("Testbech Iniciado!");
    $monitor("Alteração detectada! -> %b%b%b%b = %b %b %b %b %b", a,b,c,d,s1,s2,s3,s4,s5);
  end

  initial begin
          reset = 1;
     #1;  reset = 0;
     #1;  ready = 0; a = 0; b = 0; c = 0; d = 0; ready = 1; // 0
     #1;  ready = 0; a = 0; b = 0; c = 0; d = 1; ready = 1; // 1
     #1;  ready = 0; a = 0; b = 0; c = 1; d = 0; ready = 1; // 2
     #1;  ready = 0; a = 0; b = 0; c = 1; d = 1; ready = 1; // 3
     #1;  ready = 0; a = 0; b = 1; c = 0; d = 0; ready = 1; // 4
     #1;  ready = 0; a = 0; b = 1; c = 0; d = 1; ready = 1; // 5
     #1;  ready = 0; a = 0; b = 1; c = 1; d = 0; ready = 1; // 6
     #1;  ready = 0; a = 0; b = 1; c = 1; d = 1; ready = 1; // 7
     #1;  ready = 0; a = 1; b = 0; c = 0; d = 0; ready = 1; // 8
     #1;  ready = 0; a = 1; b = 0; c = 0; d = 1; ready = 1; // 9
     $finish;
  end
endmodule
