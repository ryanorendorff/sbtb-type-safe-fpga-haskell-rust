/* AUTOMATICALLY GENERATED VERILOG-2001 SOURCE CODE.
** GENERATED BY CLASH 1.2.4. DO NOT MODIFY.
*/
`timescale 100fs/100fs
module runNetwork
    ( // Inputs
      input [63:0] in


      // Outputs
    , output wire [31:0] out
    );
  wire [63:0] c$elA0_app_arg;
  wire [95:0] c$app_arg;
  wire [95:0] c$app_arg_0;
  wire [95:0] result;
  wire [95:0] c$app_arg_1;
  wire [95:0] c$app_arg_2;
  wire [95:0] result_0;
  wire [63:0] c$app_arg_3;
  wire [63:0] c$app_arg_4;
  wire [63:0] result_1;
  wire [31:0] result_2;
  wire signed [31:0] result_3;
  wire signed [31:0] c$case_alt;
  wire [31:0] \r' ;
  wire [32:0] \c$r'_app_arg ;
  wire signed [32:0] r;
  wire [63:0] c$app_arg_5;
  wire signed [31:0] result_4;
  wire signed [31:0] c$app_arg_6;
  wire [95:0] c$vec1;
  wire [191:0] c$vec;
  wire [95:0] c$vec1_0;
  wire [287:0] c$vec_0;
  wire [63:0] c$vec1_1;
  wire [191:0] c$vec_1;
  wire [31:0] c$bv_14;
  wire [32:0] \c$r'_projection ;
  wire [63:0] c$vec1_2;

  // map begin
  genvar i;
  generate
  for (i=0; i < 2; i = i + 1) begin : map
    wire signed [31:0] map_in;
    assign map_in = in[i*32+:32];
    wire signed [31:0] map_out;
    assign map_out = (map_in > 32'sd0) ? 32'sd33554432 : -32'sd33554432;


    assign c$elA0_app_arg[i*32+:32] = map_out;
  end
  endgenerate
  // map end

  assign c$vec1 = {32'sd19822346
                  ,32'sd26707737
                  ,32'sd12824001};

  // zipWith start
  genvar i_0;
  generate
  for (i_0 = 0; i_0 < 3; i_0 = i_0 + 1) begin : zipWith
    wire signed [31:0] zipWith_in1;
    assign zipWith_in1 = c$vec1[i_0*32+:32];
    wire signed [31:0] zipWith_in2;
    assign zipWith_in2 = c$app_arg_0[i_0*32+:32];
    wire signed [31:0] c$n;
    wire signed [31:0] c$case_alt_0;
    wire [31:0] \c$r'_0 ;
    wire [32:0] \c$r'_app_arg_0 ;
    wire signed [32:0] r_0;
    wire [31:0] c$bv;
    wire [31:0] c$bv_0;
    wire [32:0] \c$r'_0_projection ;
    assign c$n = ((( \c$r'_app_arg_0 [33-1] ) ^ ( \c$r'_0 [32-1] )) == 1'b0) ? ($signed(\c$r'_0 )) : c$case_alt_0;

    assign c$bv = ($unsigned(zipWith_in1));

    assign c$bv_0 = ($unsigned(zipWith_in2));

    assign c$case_alt_0 = ((( c$bv[32-1] ) & ( c$bv_0[32-1] )) == 1'b0) ? 32'sd2147483647 : -32'sd2147483648;

    assign \c$r'_0_projection  = \c$r'_app_arg_0 ;

    assign \c$r'_0  = \c$r'_0_projection [31:0];

    assign \c$r'_app_arg_0  = $unsigned(r_0);

    assign r_0 = zipWith_in1 + zipWith_in2;


    assign c$app_arg[i_0*32+:32] = c$n;
  end
  endgenerate
  // zipWith end

  assign c$vec = {{-32'sd24459838,32'sd42607320}
                 ,{32'sd38657718,-32'sd10749979}
                 ,{32'sd30660939,32'sd35820785}};

  // map begin
  genvar i_3;
  generate
  for (i_3=0; i_3 < 3; i_3 = i_3 + 1) begin : map_0
    wire [63:0] map_in_0;
    assign map_in_0 = c$vec[i_3*64+:64];
    wire signed [31:0] map_out_0;
    wire [63:0] c$app_arg_7;
    // zipWith start
    genvar i_1;

    for (i_1 = 0; i_1 < 2; i_1 = i_1 + 1) begin : zipWith_0
      wire signed [31:0] zipWith_in1_0;
      assign zipWith_in1_0 = map_in_0[i_1*32+:32];
      wire signed [31:0] zipWith_in2_0;
      assign zipWith_in2_0 = c$elA0_app_arg[i_1*32+:32];
      wire signed [31:0] c$n_0;
      wire signed [31:0] c$case_alt_1;
    wire [7:0] x;
    wire [6:0] rL;
    wire [56:0] rR;
    wire [63:0] ds3;
    wire signed [63:0] c$ds3_app_arg;
    wire [56:0] c$bv_1;
    assign c$bv_1 = (rR >> (64'sd25));

    assign c$n_0 = (((~ (| (x))) | (& (x))) == 1'b1) ? ($signed((c$bv_1[0+:32]))) : c$case_alt_1;

    assign c$case_alt_1 = (( rL[7-1] ) == 1'b0) ? 32'sd2147483647 : -32'sd2147483648;

    assign x = {(( rR[57-1] )),rL};

    assign rL = ds3[63:57];

    assign rR = ds3[56:0];

    assign ds3 = ($unsigned(c$ds3_app_arg));

    assign c$ds3_app_arg = zipWith_in1_0 * zipWith_in2_0;


      assign c$app_arg_7[i_1*32+:32] = c$n_0;
    end

    // zipWith end

    // foldr start
    wire signed [31:0] intermediate [0:2];
    assign intermediate[2] = 32'sd0;

    genvar i_2;

    for (i_2=0; i_2 < 2; i_2=i_2+1) begin : foldr
      wire signed [31:0] foldr_in1;
      assign foldr_in1 = c$app_arg_7[(2-1-i_2)*32+:32];
      wire signed [31:0] foldr_in2;
      wire signed [31:0] foldr_out;

      assign foldr_in2 = intermediate[i_2+1];
      wire signed [31:0] c$case_alt_2;
    wire [31:0] \c$r'_1 ;
    wire [32:0] \c$r'_app_arg_1 ;
    wire signed [32:0] r_1;
    wire [31:0] c$bv_2;
    wire [31:0] c$bv_3;
    wire [32:0] \c$r'_1_projection ;
    assign foldr_out = ((( \c$r'_app_arg_1 [33-1] ) ^ ( \c$r'_1 [32-1] )) == 1'b0) ? ($signed(\c$r'_1 )) : c$case_alt_2;

    assign c$bv_2 = ($unsigned(foldr_in1));

    assign c$bv_3 = ($unsigned(foldr_in2));

    assign c$case_alt_2 = ((( c$bv_2[32-1] ) & ( c$bv_3[32-1] )) == 1'b0) ? 32'sd2147483647 : -32'sd2147483648;

    assign \c$r'_1_projection  = \c$r'_app_arg_1 ;

    assign \c$r'_1  = \c$r'_1_projection [31:0];

    assign \c$r'_app_arg_1  = $unsigned(r_1);

    assign r_1 = foldr_in1 + foldr_in2;


      assign intermediate[i_2] = foldr_out;
    end


    assign map_out_0 = intermediate[0];
    // foldr end


    assign c$app_arg_0[i_3*32+:32] = map_out_0;
  end
  endgenerate
  // map end

  // map begin
  genvar i_4;
  generate
  for (i_4=0; i_4 < 3; i_4 = i_4 + 1) begin : map_1
    wire signed [31:0] map_in_1;
    assign map_in_1 = c$app_arg[i_4*32+:32];
    wire signed [31:0] map_out_1;
    assign map_out_1 = (32'sd0 <= map_in_1) ? map_in_1 : 32'sd0;


    assign result[i_4*32+:32] = map_out_1;
  end
  endgenerate
  // map end

  assign c$vec1_0 = {32'sd961838
                    ,32'sd10297670
                    ,-32'sd3263368};

  // zipWith start
  genvar i_5;
  generate
  for (i_5 = 0; i_5 < 3; i_5 = i_5 + 1) begin : zipWith_1
    wire signed [31:0] zipWith_in1_1;
    assign zipWith_in1_1 = c$vec1_0[i_5*32+:32];
    wire signed [31:0] zipWith_in2_1;
    assign zipWith_in2_1 = c$app_arg_2[i_5*32+:32];
    wire signed [31:0] c$n_1;
    wire signed [31:0] c$case_alt_3;
    wire [31:0] \c$r'_2 ;
    wire [32:0] \c$r'_app_arg_2 ;
    wire signed [32:0] r_2;
    wire [31:0] c$bv_4;
    wire [31:0] c$bv_5;
    wire [32:0] \c$r'_2_projection ;
    assign c$n_1 = ((( \c$r'_app_arg_2 [33-1] ) ^ ( \c$r'_2 [32-1] )) == 1'b0) ? ($signed(\c$r'_2 )) : c$case_alt_3;

    assign c$bv_4 = ($unsigned(zipWith_in1_1));

    assign c$bv_5 = ($unsigned(zipWith_in2_1));

    assign c$case_alt_3 = ((( c$bv_4[32-1] ) & ( c$bv_5[32-1] )) == 1'b0) ? 32'sd2147483647 : -32'sd2147483648;

    assign \c$r'_2_projection  = \c$r'_app_arg_2 ;

    assign \c$r'_2  = \c$r'_2_projection [31:0];

    assign \c$r'_app_arg_2  = $unsigned(r_2);

    assign r_2 = zipWith_in1_1 + zipWith_in2_1;


    assign c$app_arg_1[i_5*32+:32] = c$n_1;
  end
  endgenerate
  // zipWith end

  assign c$vec_0 = {{-32'sd22481489
                    ,32'sd29249391
                    ,-32'sd11533093}
                   ,{32'sd32208695,-32'sd6314367,-32'sd13401076}
                   ,{32'sd34711918,-32'sd4769863,-32'sd9895881}};

  // map begin
  genvar i_8;
  generate
  for (i_8=0; i_8 < 3; i_8 = i_8 + 1) begin : map_2
    wire [95:0] map_in_2;
    assign map_in_2 = c$vec_0[i_8*96+:96];
    wire signed [31:0] map_out_2;
    wire [95:0] c$app_arg_8;
    // zipWith start
    genvar i_6;

    for (i_6 = 0; i_6 < 3; i_6 = i_6 + 1) begin : zipWith_2
      wire signed [31:0] zipWith_in1_2;
      assign zipWith_in1_2 = map_in_2[i_6*32+:32];
      wire signed [31:0] zipWith_in2_2;
      assign zipWith_in2_2 = result[i_6*32+:32];
      wire signed [31:0] c$n_2;
      wire signed [31:0] c$case_alt_4;
    wire [7:0] x_0;
    wire [6:0] rL_0;
    wire [56:0] rR_0;
    wire [63:0] ds3_0;
    wire signed [63:0] c$ds3_app_arg_0;
    wire [56:0] c$bv_6;
    assign c$bv_6 = (rR_0 >> (64'sd25));

    assign c$n_2 = (((~ (| (x_0))) | (& (x_0))) == 1'b1) ? ($signed((c$bv_6[0+:32]))) : c$case_alt_4;

    assign c$case_alt_4 = (( rL_0[7-1] ) == 1'b0) ? 32'sd2147483647 : -32'sd2147483648;

    assign x_0 = {(( rR_0[57-1] )),rL_0};

    assign rL_0 = ds3_0[63:57];

    assign rR_0 = ds3_0[56:0];

    assign ds3_0 = ($unsigned(c$ds3_app_arg_0));

    assign c$ds3_app_arg_0 = zipWith_in1_2 * zipWith_in2_2;


      assign c$app_arg_8[i_6*32+:32] = c$n_2;
    end

    // zipWith end

    // foldr start
    wire signed [31:0] intermediate_0 [0:3];
    assign intermediate_0[3] = 32'sd0;

    genvar i_7;

    for (i_7=0; i_7 < 3; i_7=i_7+1) begin : foldr_0
      wire signed [31:0] foldr_in1_0;
      assign foldr_in1_0 = c$app_arg_8[(3-1-i_7)*32+:32];
      wire signed [31:0] foldr_in2_0;
      wire signed [31:0] foldr_out_0;

      assign foldr_in2_0 = intermediate_0[i_7+1];
      wire signed [31:0] c$case_alt_5;
    wire [31:0] \c$r'_3 ;
    wire [32:0] \c$r'_app_arg_3 ;
    wire signed [32:0] r_3;
    wire [31:0] c$bv_7;
    wire [31:0] c$bv_8;
    wire [32:0] \c$r'_3_projection ;
    assign foldr_out_0 = ((( \c$r'_app_arg_3 [33-1] ) ^ ( \c$r'_3 [32-1] )) == 1'b0) ? ($signed(\c$r'_3 )) : c$case_alt_5;

    assign c$bv_7 = ($unsigned(foldr_in1_0));

    assign c$bv_8 = ($unsigned(foldr_in2_0));

    assign c$case_alt_5 = ((( c$bv_7[32-1] ) & ( c$bv_8[32-1] )) == 1'b0) ? 32'sd2147483647 : -32'sd2147483648;

    assign \c$r'_3_projection  = \c$r'_app_arg_3 ;

    assign \c$r'_3  = \c$r'_3_projection [31:0];

    assign \c$r'_app_arg_3  = $unsigned(r_3);

    assign r_3 = foldr_in1_0 + foldr_in2_0;


      assign intermediate_0[i_7] = foldr_out_0;
    end


    assign map_out_2 = intermediate_0[0];
    // foldr end


    assign c$app_arg_2[i_8*32+:32] = map_out_2;
  end
  endgenerate
  // map end

  // map begin
  genvar i_9;
  generate
  for (i_9=0; i_9 < 3; i_9 = i_9 + 1) begin : map_3
    wire signed [31:0] map_in_3;
    assign map_in_3 = c$app_arg_1[i_9*32+:32];
    wire signed [31:0] map_out_3;
    assign map_out_3 = (32'sd0 <= map_in_3) ? map_in_3 : 32'sd0;


    assign result_0[i_9*32+:32] = map_out_3;
  end
  endgenerate
  // map end

  assign c$vec1_1 = {32'sd14882897,-32'sd3076631};

  // zipWith start
  genvar i_10;
  generate
  for (i_10 = 0; i_10 < 2; i_10 = i_10 + 1) begin : zipWith_3
    wire signed [31:0] zipWith_in1_3;
    assign zipWith_in1_3 = c$vec1_1[i_10*32+:32];
    wire signed [31:0] zipWith_in2_3;
    assign zipWith_in2_3 = c$app_arg_4[i_10*32+:32];
    wire signed [31:0] c$n_3;
    wire signed [31:0] c$case_alt_6;
    wire [31:0] \c$r'_4 ;
    wire [32:0] \c$r'_app_arg_4 ;
    wire signed [32:0] r_4;
    wire [31:0] c$bv_9;
    wire [31:0] c$bv_10;
    wire [32:0] \c$r'_4_projection ;
    assign c$n_3 = ((( \c$r'_app_arg_4 [33-1] ) ^ ( \c$r'_4 [32-1] )) == 1'b0) ? ($signed(\c$r'_4 )) : c$case_alt_6;

    assign c$bv_9 = ($unsigned(zipWith_in1_3));

    assign c$bv_10 = ($unsigned(zipWith_in2_3));

    assign c$case_alt_6 = ((( c$bv_9[32-1] ) & ( c$bv_10[32-1] )) == 1'b0) ? 32'sd2147483647 : -32'sd2147483648;

    assign \c$r'_4_projection  = \c$r'_app_arg_4 ;

    assign \c$r'_4  = \c$r'_4_projection [31:0];

    assign \c$r'_app_arg_4  = $unsigned(r_4);

    assign r_4 = zipWith_in1_3 + zipWith_in2_3;


    assign c$app_arg_3[i_10*32+:32] = c$n_3;
  end
  endgenerate
  // zipWith end

  assign c$vec_1 = {{-32'sd7895803
                    ,32'sd7260113
                    ,-32'sd8156621}
                   ,{32'sd61192872,32'sd33290805,32'sd21183706}};

  // map begin
  genvar i_13;
  generate
  for (i_13=0; i_13 < 2; i_13 = i_13 + 1) begin : map_4
    wire [95:0] map_in_4;
    assign map_in_4 = c$vec_1[i_13*96+:96];
    wire signed [31:0] map_out_4;
    wire [95:0] c$app_arg_9;
    // zipWith start
    genvar i_11;

    for (i_11 = 0; i_11 < 3; i_11 = i_11 + 1) begin : zipWith_4
      wire signed [31:0] zipWith_in1_4;
      assign zipWith_in1_4 = map_in_4[i_11*32+:32];
      wire signed [31:0] zipWith_in2_4;
      assign zipWith_in2_4 = result_0[i_11*32+:32];
      wire signed [31:0] c$n_4;
      wire signed [31:0] c$case_alt_7;
    wire [7:0] x_1;
    wire [6:0] rL_1;
    wire [56:0] rR_1;
    wire [63:0] ds3_1;
    wire signed [63:0] c$ds3_app_arg_1;
    wire [56:0] c$bv_11;
    assign c$bv_11 = (rR_1 >> (64'sd25));

    assign c$n_4 = (((~ (| (x_1))) | (& (x_1))) == 1'b1) ? ($signed((c$bv_11[0+:32]))) : c$case_alt_7;

    assign c$case_alt_7 = (( rL_1[7-1] ) == 1'b0) ? 32'sd2147483647 : -32'sd2147483648;

    assign x_1 = {(( rR_1[57-1] )),rL_1};

    assign rL_1 = ds3_1[63:57];

    assign rR_1 = ds3_1[56:0];

    assign ds3_1 = ($unsigned(c$ds3_app_arg_1));

    assign c$ds3_app_arg_1 = zipWith_in1_4 * zipWith_in2_4;


      assign c$app_arg_9[i_11*32+:32] = c$n_4;
    end

    // zipWith end

    // foldr start
    wire signed [31:0] intermediate_1 [0:3];
    assign intermediate_1[3] = 32'sd0;

    genvar i_12;

    for (i_12=0; i_12 < 3; i_12=i_12+1) begin : foldr_1
      wire signed [31:0] foldr_in1_1;
      assign foldr_in1_1 = c$app_arg_9[(3-1-i_12)*32+:32];
      wire signed [31:0] foldr_in2_1;
      wire signed [31:0] foldr_out_1;

      assign foldr_in2_1 = intermediate_1[i_12+1];
      wire signed [31:0] c$case_alt_8;
    wire [31:0] \c$r'_5 ;
    wire [32:0] \c$r'_app_arg_5 ;
    wire signed [32:0] r_5;
    wire [31:0] c$bv_12;
    wire [31:0] c$bv_13;
    wire [32:0] \c$r'_5_projection ;
    assign foldr_out_1 = ((( \c$r'_app_arg_5 [33-1] ) ^ ( \c$r'_5 [32-1] )) == 1'b0) ? ($signed(\c$r'_5 )) : c$case_alt_8;

    assign c$bv_12 = ($unsigned(foldr_in1_1));

    assign c$bv_13 = ($unsigned(foldr_in2_1));

    assign c$case_alt_8 = ((( c$bv_12[32-1] ) & ( c$bv_13[32-1] )) == 1'b0) ? 32'sd2147483647 : -32'sd2147483648;

    assign \c$r'_5_projection  = \c$r'_app_arg_5 ;

    assign \c$r'_5  = \c$r'_5_projection [31:0];

    assign \c$r'_app_arg_5  = $unsigned(r_5);

    assign r_5 = foldr_in1_1 + foldr_in2_1;


      assign intermediate_1[i_12] = foldr_out_1;
    end


    assign map_out_4 = intermediate_1[0];
    // foldr end


    assign c$app_arg_4[i_13*32+:32] = map_out_4;
  end
  endgenerate
  // map end

  // map begin
  genvar i_14;
  generate
  for (i_14=0; i_14 < 2; i_14 = i_14 + 1) begin : map_5
    wire signed [31:0] map_in_5;
    assign map_in_5 = c$app_arg_3[i_14*32+:32];
    wire signed [31:0] map_out_5;
    assign map_out_5 = (32'sd0 <= map_in_5) ? map_in_5 : 32'sd0;


    assign result_1[i_14*32+:32] = map_out_5;
  end
  endgenerate
  // map end

  assign result_2 = result_3;

  assign result_3 = ((( \c$r'_app_arg [33-1] ) ^ ( \r' [32-1] )) == 1'b0) ? ($signed(\r' )) : c$case_alt;

  assign c$bv_14 = ($unsigned(result_4));

  assign c$case_alt = ((1'b0 & ( c$bv_14[32-1] )) == 1'b0) ? 32'sd2147483647 : -32'sd2147483648;

  assign \c$r'_projection  = \c$r'_app_arg ;

  assign \r'  = \c$r'_projection [31:0];

  assign \c$r'_app_arg  = $unsigned(r);

  assign r = 32'sd25943543 + result_4;

  assign c$vec1_2 = {32'sd23568973
                    ,-32'sd17111243};

  // zipWith start
  genvar i_15;
  generate
  for (i_15 = 0; i_15 < 2; i_15 = i_15 + 1) begin : zipWith_5
    wire signed [31:0] zipWith_in1_5;
    assign zipWith_in1_5 = c$vec1_2[i_15*32+:32];
    wire signed [31:0] zipWith_in2_5;
    assign zipWith_in2_5 = result_1[i_15*32+:32];
    wire signed [31:0] c$n_5;
    wire signed [31:0] c$case_alt_9;
    wire [7:0] x_2;
    wire [6:0] rL_2;
    wire [56:0] rR_2;
    wire [63:0] ds3_2;
    wire signed [63:0] c$ds3_app_arg_2;
    wire [56:0] c$bv_15;
    assign c$bv_15 = (rR_2 >> (64'sd25));

    assign c$n_5 = (((~ (| (x_2))) | (& (x_2))) == 1'b1) ? ($signed((c$bv_15[0+:32]))) : c$case_alt_9;

    assign c$case_alt_9 = (( rL_2[7-1] ) == 1'b0) ? 32'sd2147483647 : -32'sd2147483648;

    assign x_2 = {(( rR_2[57-1] )),rL_2};

    assign rL_2 = ds3_2[63:57];

    assign rR_2 = ds3_2[56:0];

    assign ds3_2 = ($unsigned(c$ds3_app_arg_2));

    assign c$ds3_app_arg_2 = zipWith_in1_5 * zipWith_in2_5;


    assign c$app_arg_5[i_15*32+:32] = c$n_5;
  end
  endgenerate
  // zipWith end

  // foldr start
  wire signed [31:0] intermediate_2 [0:2];
  assign intermediate_2[2] = 32'sd0;

  genvar i_16;
  generate
  for (i_16=0; i_16 < 2; i_16=i_16+1) begin : foldr_2
    wire signed [31:0] foldr_in1_2;
    assign foldr_in1_2 = c$app_arg_5[(2-1-i_16)*32+:32];
    wire signed [31:0] foldr_in2_2;
    wire signed [31:0] foldr_out_2;

    assign foldr_in2_2 = intermediate_2[i_16+1];
    wire signed [31:0] c$case_alt_10;
    wire [31:0] \c$r'_6 ;
    wire [32:0] \c$r'_app_arg_6 ;
    wire signed [32:0] r_6;
    wire [31:0] c$bv_16;
    wire [31:0] c$bv_17;
    wire [32:0] \c$r'_6_projection ;
    assign foldr_out_2 = ((( \c$r'_app_arg_6 [33-1] ) ^ ( \c$r'_6 [32-1] )) == 1'b0) ? ($signed(\c$r'_6 )) : c$case_alt_10;

    assign c$bv_16 = ($unsigned(foldr_in1_2));

    assign c$bv_17 = ($unsigned(foldr_in2_2));

    assign c$case_alt_10 = ((( c$bv_16[32-1] ) & ( c$bv_17[32-1] )) == 1'b0) ? 32'sd2147483647 : -32'sd2147483648;

    assign \c$r'_6_projection  = \c$r'_app_arg_6 ;

    assign \c$r'_6  = \c$r'_6_projection [31:0];

    assign \c$r'_app_arg_6  = $unsigned(r_6);

    assign r_6 = foldr_in1_2 + foldr_in2_2;


    assign intermediate_2[i_16] = foldr_out_2;
  end
  endgenerate

  assign result_4 = intermediate_2[0];
  // foldr end

  assign c$app_arg_6 = ($signed(result_2[31:0]) > 32'sd0) ? 32'sd33554432 : -32'sd33554432;

  assign out = c$app_arg_6;


endmodule