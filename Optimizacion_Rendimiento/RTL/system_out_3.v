module system_out_3(
    output reg finished,
    output reg [31:0] nonce_out,
    output reg valid_sal,
    input clk, 
    input reset,
    input valid,
    input [31:0] nonce
    );

always @(posedge clk) begin
	if (reset == 0)begin
        finished <= 1;
        nonce_out <= 0;
    end
  	else begin
          if(valid == 1) begin
              nonce_out <= nonce;
              finished <= 1;
              valid_sal <= 1;
          end
          else begin
              nonce_out <= 0;
              finished <= 0;
                valid_sal <= 0;
          end
    end     
end
endmodule