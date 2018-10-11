module codificador_em_morse (a, b, c, d, s1, reset, ready);
    input wire a, b, c, d, reset, ready;
    output reg [4:0] s1; //Saidas codificadas em morse//


    always @(*) begin
      if (reset) begin
        s1[4] = 0;
        s1[3] = 0;
        s1[2] = 0;
        s1[1] = 0;
        s1[0] = 0;
      end
      else if (ready) begin
        s1[4] = (~b & c) | (b & ~c) | (~a & ~b & d);
        s1[3] = (~b & c) | (c & ~d) | (b & ~c);
        s1[2] = (b) | (c & d);
        s1[1] = (b) | (a & ~d);
        s1[0] = (a) | (b & d) | (b & c);
      end
    end
endmodule
