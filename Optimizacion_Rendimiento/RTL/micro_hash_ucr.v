module micro_hash_ucr #(parameter byte = 8 )(
	input clk,
	input reset,
  input finished,
  input next,
  input [16*byte-1:0] block,
	output reg [3*byte-1:0] h,
  output reg valid_out
	);
  
  // Registers
  reg [32*byte-1:0] Wx;
  reg [1*byte-1:0] a;
  reg [1*byte-1:0] b;
  reg [1*byte-1:0] c;
  reg [1*byte-1:0] x;
  reg [1*byte-1:0] k;

  // Integers
  integer i;
  integer j;
  
  // Pipeline registers
  reg pipe0;
  reg pipe1;
  reg pipe2;
  reg pipe3;
  reg pipe4;
  reg pipe5;
  reg pipe6;
  reg pipe7;
  reg pipe8;
  reg pipe9;
  reg pipe10;
  reg pipe11;
  reg pipe12;
  reg pipe13;
  reg pipe14;
  reg pipe15;
  reg pipe16;
  reg pipe17;
  reg pipe18;
  reg pipe19;
  reg pipe20;
  reg pipe21;
  reg pipe22;
  reg pipe23;
  reg pipe24;
  reg pipe25;
  reg pipe26;
  reg pipe27;
  reg pipe28;
  reg pipe29;
  reg pipe30;
  reg pipe31;
  reg pipe32;
  reg pipe33;
  reg pipe34;
  reg pipe35;
  reg pipe36;
  reg pipe37;
  reg pipe38;
  reg pipe39;
  reg pipe40;
  reg pipe41;
  reg pipe42;
  reg pipe43;
  reg pipe44;
  reg pipe45;
  reg pipe46;
  reg pipe47;
  reg pipe48;
  reg pipe49;
  reg pipe50;
  reg pipe51;
  reg pipe52;
  reg pipe53;
  reg pipe54;
  reg pipe55;
  reg pipe56;
  reg pipe57;
  reg pipe58;
  reg pipe59;
  reg pipe60;
  reg pipe61;
  reg pipe62;
  reg pipe63;
  reg pipe64;
  reg pipe65;
  reg pipe66;
  reg pipe67;
  reg pipe68;
  reg pipe69;
  reg pipe70;
  reg pipe71;

always @(posedge clk) begin
  if (reset == 0 || finished == 1 || next == 1) begin

      h <=0;
      Wx <=0;
      a<=0;
      b<=0;
      c<=0;
      k<=0;
      x<=0;
      valid_out <= 0;
      pipe0 <= 0;
      pipe1 <= 0;
      pipe2 <= 0;
      pipe3 <= 0;
      pipe4 <= 0;
      pipe5 <= 0;
      pipe6 <= 0;
      pipe7 <= 0;
      pipe8 <= 0;
      pipe9 <= 0;
      pipe10 <= 0;
      pipe11 <= 0;
      pipe12 <= 0;
      pipe13 <= 0;
      pipe14 <= 0;
      pipe15 <= 0;
      pipe16 <= 0;
      pipe17 <= 0;
      pipe18 <= 0;
      pipe19 <= 0;
      pipe20 <= 0;
      pipe21 <= 0;
      pipe22 <= 0;
      pipe23 <= 0;
      pipe24 <= 0;
      pipe25 <= 0;
      pipe26 <= 0;
      pipe27 <= 0;
      pipe28 <= 0;
      pipe29 <= 0;
      pipe30 <= 0;
      pipe31 <= 0;
      pipe32 <= 0;
      pipe33 <= 0;
      pipe34 <= 0;
      pipe35 <= 0;
      pipe36 <= 0;
      pipe37 <= 0;
      pipe38 <= 0;
      pipe39 <= 0;
      pipe40 <= 0;
      pipe41 <= 0;
      pipe42 <= 0;
      pipe43 <= 0;
      pipe44 <= 0;
      pipe45 <= 0;
      pipe46 <= 0;
      pipe47 <= 0;
      pipe48 <= 0;
      pipe49 <= 0;
      pipe50 <= 0;
      pipe51 <= 0;
      pipe52 <= 0;
      pipe53 <= 0;
      pipe54 <= 0;
      pipe55 <= 0;
      pipe56 <= 0;
      pipe57 <= 0;
      pipe58 <= 0;
      pipe59 <= 0;
      pipe60 <= 0;
      pipe61 <= 0;
      pipe62 <= 0;
      pipe63 <= 0;
      pipe64 <= 0;
      pipe65 <= 0;
      pipe66 <= 0;
      pipe67 <= 0;
      pipe68 <= 0;
      pipe69 <= 0;
      pipe70 <= 0;
      pipe71 <= 0;
  end

else begin
  for ( j = 0; j <= 31; j=j+1) begin
    if (j==0) begin
       Wx[byte-1:0]  <= block[byte-1:0];
    end

    if (j==1) begin
       Wx[2*byte-1:byte]  <= block[2*byte-1:byte];
    end

    if (j==2) begin
      Wx[3*byte-1:2*byte]  <= block[3*byte-1:2*byte];
    end

    if (j==3) begin
       Wx[4*byte-1:3*byte]  <= block[4*byte-1:3*byte];
    end

    if (j==4) begin
      Wx[5*byte-1:4*byte]  <= block[5*byte-1:4*byte];
    end

    if (j==5) begin
       Wx[6*byte-1:5*byte]  <= block[6*byte-1:5*byte];
    end

    if (j==6) begin
     Wx[7*byte-1:6*byte]  <= block[7*byte-1:6*byte];
    end

    if (j==7) begin
      Wx[8*byte-1:7*byte]  <= block[8*byte-1:7*byte];
    end

    if (j==8) begin
     Wx[9*byte-1:8*byte]  <= block[9*byte-1:8*byte];
    end

    if (j==9) begin
     Wx[10*byte-1:9*byte]  <= block[10*byte-1:9*byte];
    end

    if (j==10) begin
      Wx[11*byte-1:10*byte]  <= block[11*byte-1:10*byte];
    end

    if (j==11) begin
       Wx[12*byte-1:11*byte]  <= block[12*byte-1:11*byte];
    end

    if (j==12) begin
     Wx[13*byte-1:12*byte]  <= block[13*byte-1:12*byte];
    end

    if (j==13) begin
      Wx[14*byte-1:13*byte]  <= block[14*byte-1:13*byte];
    end

    if (j==14) begin
      Wx[15*byte-1:14*byte]  <= block[15*byte-1:14*byte];
    end

    if (j==15) begin
       Wx[16*byte-1:15*byte]  <= block[16*byte-1:15*byte];
    end

    if (j==16) begin     //i-3
      Wx[17*byte-1:16*byte]  <= Wx[17*byte-1-3*byte:16*byte-3*byte] |  Wx[17*byte-1-9*byte:16*byte-9*byte]^Wx[17*byte-1-14*byte:16*byte-14*byte] ;
    end

    if (j==17) begin
      Wx[18*byte-1:17*byte]  <= Wx[18*byte-1-3*byte:17*byte-3*byte] |  Wx[18*byte-1-9*byte:17*byte-9*byte]^Wx[18*byte-1-14*byte:17*byte-14*byte] ;
    end

    if (j==18) begin
      Wx[19*byte-1:18*byte]  <= Wx[19*byte-1-3*byte:18*byte-3*byte] |  Wx[19*byte-1-9*byte:18*byte-9*byte]^Wx[19*byte-1-14*byte:18*byte-14*byte] ;
    end

    if (j==19) begin
      Wx[20*byte-1:19*byte]  <= Wx[20*byte-1-3*byte:19*byte-3*byte] |  Wx[20*byte-1-9*byte:19*byte-9*byte]^Wx[20*byte-1-14*byte:19*byte-14*byte] ;
    end

    if (j==20) begin
      Wx[21*byte-1:20*byte]  <= Wx[21*byte-1-3*byte:20*byte-3*byte] |  Wx[21*byte-1-9*byte:20*byte-9*byte]^Wx[21*byte-1-14*byte:20*byte-14*byte] ;
    end

    if (j==21) begin
      Wx[22*byte-1:21*byte]  <= Wx[22*byte-1-3*byte:21*byte-3*byte] |  Wx[22*byte-1-9*byte:21*byte-9*byte]^Wx[22*byte-1-14*byte:21*byte-14*byte] ;
    end

    if (j==22) begin
      Wx[23*byte-1:22*byte]  <= Wx[23*byte-1-3*byte:22*byte-3*byte] |  Wx[23*byte-1-9*byte:22*byte-9*byte]^Wx[23*byte-1-14*byte:22*byte-14*byte] ;
    end
// 183:176
    if (j==23) begin
      Wx[24*byte-1:23*byte]  <= Wx[24*byte-1-3*byte:23*byte-3*byte] |  Wx[24*byte-1-9*byte:23*byte-9*byte]^Wx[24*byte-1-14*byte:23*byte-14*byte] ;
    end

    if (j==24) begin
      Wx[25*byte-1:24*byte]  <= Wx[25*byte-1-3*byte:24*byte-3*byte] |  Wx[25*byte-1-9*byte:24*byte-9*byte]^Wx[25*byte-1-14*byte:24*byte-14*byte] ;
    end

    if (j==25) begin
      Wx[26*byte-1:25*byte]  <= Wx[26*byte-1-3*byte:25*byte-3*byte] |  Wx[26*byte-1-9*byte:25*byte-9*byte]^Wx[26*byte-1-14*byte:25*byte-14*byte] ;
    end

    if (j==26) begin
      Wx[27*byte-1:26*byte]  <= Wx[27*byte-1-3*byte:26*byte-3*byte] |  Wx[27*byte-1-9*byte:26*byte-9*byte]^Wx[27*byte-1-14*byte:26*byte-14*byte] ;
    end

    if (j==27) begin
      Wx[28*byte-1:27*byte]  <= Wx[28*byte-1-3*byte:27*byte-3*byte] |  Wx[28*byte-1-9*byte:27*byte-9*byte]^Wx[28*byte-1-14*byte:27*byte-14*byte] ;
    end

    if (j==28) begin
      Wx[29*byte-1:28*byte]  <= Wx[29*byte-1-3*byte:28*byte-3*byte] |  Wx[29*byte-1-9*byte:28*byte-9*byte]^Wx[29*byte-1-14*byte:28*byte-14*byte] ;
    end

    if (j==29) begin
      Wx[30*byte-1:29*byte]  <= Wx[30*byte-1-3*byte:29*byte-3*byte] |  Wx[30*byte-1-9*byte:29*byte-9*byte]^Wx[30*byte-1-14*byte:29*byte-14*byte] ;
    end

    if (j==30) begin
      Wx[31*byte-1:30*byte]  <= Wx[31*byte-1-3*byte:30*byte-3*byte] |  Wx[31*byte-1-9*byte:30*byte-9*byte]^Wx[31*byte-1-14*byte:30*byte-14*byte] ;
    end

    if (j==31) begin
      Wx[32*byte-1:31*byte]  <= Wx[32*byte-1-3*byte:31*byte-3*byte] |  Wx[32*byte-1-9*byte:31*byte-9*byte]^Wx[32*byte-1-14*byte:31*byte-14*byte] ;
    end
  end

/*********** Pipeline Logic *************/
  pipe0 <= 1;
  pipe1 <= pipe0;
  pipe2 <= pipe1;
  pipe3 <= pipe2;
  pipe4 <= pipe3;
  pipe5 <= pipe4;
  pipe6 <= pipe5;
  pipe7 <= pipe6;
  pipe8 <= pipe7;
  pipe9 <= pipe8;
  pipe10 <= pipe9;
  pipe11 <= pipe10;
  pipe12 <= pipe11;
  pipe13 <= pipe12;
  pipe14 <= pipe13;
  pipe15 <= pipe14;
  pipe16 <= pipe15;
  pipe17 <= pipe16;
  pipe18 <= pipe17;
  pipe19 <= pipe18;
  pipe20 <= pipe19;
  pipe21 <= pipe20;
  pipe22 <= pipe21;
  pipe23 <= pipe22;
  pipe24 <= pipe23;
  pipe25 <= pipe24;
  pipe26 <= pipe25;
  pipe27 <= pipe26;
  pipe28 <= pipe27;
  pipe29 <= pipe28;
  pipe30 <= pipe29;
  pipe31 <= pipe30;
  pipe32 <= pipe31;
  pipe33 <= pipe32;
  pipe34 <= pipe33;
  pipe35 <= pipe34;
  pipe36 <= pipe35;
  pipe37 <= pipe36;
  pipe38 <= pipe37;
  pipe39 <= pipe38;
  pipe40 <= pipe39;
  pipe41 <= pipe40;
  pipe42 <= pipe41;
  pipe43 <= pipe42;
  pipe44 <= pipe43;
  pipe45 <= pipe44;
  pipe46 <= pipe45;
  pipe47 <= pipe46;
  pipe48 <= pipe47;
  pipe49 <= pipe48;
  pipe50 <= pipe49;
  pipe51 <= pipe50;
  pipe52 <= pipe51;
  pipe53 <= pipe52;
  pipe54 <= pipe53;
  pipe55 <= pipe54;
  pipe56 <= pipe55;
  pipe57 <= pipe56;
  pipe58 <= pipe57;
  pipe59 <= pipe58;
  pipe60 <= pipe59;
  pipe61 <= pipe60;
  pipe62 <= pipe61;
  pipe63 <= pipe62;
  pipe64 <= pipe63;
  pipe65 <= pipe64;
  pipe66 <= pipe65;
  pipe67 <= pipe66;
  pipe68 <= pipe67;
  pipe69 <= pipe68;
  pipe70 <= pipe69;
  pipe71 <= pipe70;

  if(pipe5 == 1)begin
    h[3*byte-1:0] <= 'hfe8901;
  end

  if(pipe6 == 1)begin
    a <= h[byte-1:0];
    b <= h[2*byte-1:byte];
    c <= h[3*byte-1:2*byte];
  end
/******************************************/

  if(pipe7 == 1)begin
    k <= 'h99;
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe8 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[byte-1:0]);
  end

  if(pipe9 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe10 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[2*byte-1:byte]);
  end

  if(pipe11 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe12 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[3*byte-1:2*byte]);
  end

  if(pipe13 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe14 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[4*byte-1:3*byte]);
  end

  if(pipe15 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe16 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[5*byte-1:4*byte]);
  end

  if(pipe17 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe18 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[6*byte-1:5*byte]);
  end

  if(pipe19 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe20 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[7*byte-1:6*byte]);
  end

  if(pipe21 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe22 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[8*byte-1:7*byte]);
  end

  if(pipe23 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe24 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[9*byte-1:8*byte]);
  end
  
  if(pipe25 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe26 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[10*byte-1:9*byte]);
  end

  if(pipe27 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe28 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[11*byte-1:10*byte]);
  end

  if(pipe29 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe30 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[12*byte-1:11*byte]);
  end       

  if(pipe31 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe32 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[13*byte-1:12*byte]);
  end  
  
  if(pipe33 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe34 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[14*byte-1:13*byte]);
  end 
  
  if(pipe35 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe36 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[15*byte-1:14*byte]);
  end   
    
  if(pipe37 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe38 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[16*byte-1:15*byte]);
  end   
    
  if(pipe39 == 1)begin
    x <= (a ^ b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe40 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[17*byte-1:16*byte]);
    k <= 'ha1;
  end   
  if(pipe41 == 1)begin
    x <= (a | b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe42 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[18*byte-1:17*byte]);
  end

  if(pipe43 == 1)begin
    x <= (a | b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe44 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[19*byte-1:18*byte]);
  end

  if(pipe45 == 1)begin
    x <= (a | b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe46 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[20*byte-1:19*byte]);
  end

  if(pipe47 == 1)begin
    x <= (a | b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe48 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[21*byte-1:20*byte]);
  end

  if(pipe49 == 1)begin
    x <= (a | b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe50 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[22*byte-1:21*byte]);
  end

  if(pipe51 == 1)begin
    x <= (a | b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe52 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[23*byte-1:22*byte]);
  end

  if(pipe53 == 1)begin
    x <= (a | b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe54 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[24*byte-1:23*byte]);
  end

  if(pipe55 == 1)begin
    x <= (a | b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe56 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[25*byte-1:24*byte]);
  end

  if(pipe57 == 1)begin
    x <= (a | b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe58 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[26*byte-1:25*byte]);
  end

  if(pipe59 == 1)begin
    x <= (a | b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe60 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[27*byte-1:26*byte]);
  end
    
  if(pipe61 == 1)begin
    x <= (a | b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe62 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[28*byte-1:27*byte]);
  end

  if(pipe63 == 1)begin
    x <= (a | b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe64 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[29*byte-1:28*byte]);
  end

  if(pipe65 == 1)begin
    x <= (a | b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe66 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[30*byte-1:29*byte]);
  end

  if(pipe67 == 1)begin
    x <= (a | b);
    a <= (b ^ c);
    b <= (c << 4);
  end
  if(pipe68 == 1)begin
    a <= a;
    b <= b;
    c <= (x + k + Wx[31*byte-1:30*byte]);
  end

  if(pipe69 == 1)begin
    x <= (a | b);
    a <= (b ^ c);
    b <= (c << 4);
    c <= (x + k + Wx[32*byte-1:31*byte]);
  end
  // if(pipe70 == 1)begin
  // end
  if(pipe70 == 1) begin
    h[byte-1:0]         <= (h[byte-1:0])        + (a);
    h[2*byte-1:byte]    <= (h[2*byte-1:byte])   + (b);
    h[3*byte-1:2*byte]  <= (h[3*byte-1:2*byte]) + (c);
    valid_out <= 1;
  end
  if(pipe71 == 1)begin
    valid_out <= 0;
  end

  end
end
endmodule