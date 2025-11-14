module rippleCntr(
input clk,
input reset,
output [2:0] fQ
);



T_FlipFlop t1(
    .T(1'b1),
    .clk(clk),
    .reset(reset),
    .Q(fQ[0]),
    .notQ()
);
   

T_FlipFlop t2(
    .T(1'b1),
    .clk(fQ[0]),
    .reset(reset),
    .Q(fQ[1]),
    .notQ()
);
   

T_FlipFlop t3(
    .T(1'b1),
    .reset(reset),
    .clk(fQ[1]),
    .Q(fQ[2]),
    .notQ()
);
      
    
endmodule
