module system_out_universal(
input finished1,
input finished2,
input finished3,
input [31:0] nonce_out_1,
input [31:0] nonce_out_2,
input [31:0] nonce_out_3,
output reg finished_universal,
output reg [31:0] nonce_out_universal,
input clk,
input reset

);


always @(posedge clk) begin
  	
      if (reset == 0)begin
        finished_universal <= 1;
        nonce_out_universal <= 0;
      end

     else begin
       if (finished1==1 ) begin
        finished_universal <= finished1;
        nonce_out_universal <= nonce_out_1;
       end

       else if (finished2==1) begin
        finished_universal <= finished2;
        nonce_out_universal <= nonce_out_2;
       end


        else if ( finished3==1) begin
        finished_universal <= finished3;
        nonce_out_universal <= nonce_out_3;
       end

    else begin

          finished_universal <= 0;
          nonce_out_universal <=  0;

    end
   
end

end

endmodule 