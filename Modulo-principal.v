module codificador_em_morse(a,b,c,d,s1,s2,s3,,s4,s5,reset,ready);
    input wire a,b,c,d,reset,ready;
    output reg s1,s2,s3,s4,s5; //Saidas codificadas em morse//


    always @ ( * ) begin
      if (reset) begin
        s1 = 0;
        s2 = 0;
        s3 = 0;
        s4 = 0;
        s5 = 0;
      end
      else if (ready) begin
        s1 = (~b & c) | (b & ~c) | (~a & ~b & d);
        s2 = (~b & c) | (c & ~d) | (b & ~c);
        s3 = (b) | (c & d);
        s4 = (b) | (a & ~d);
        s5 = (a) | (b & d) | (b & c);
      end
    end
endmodule
