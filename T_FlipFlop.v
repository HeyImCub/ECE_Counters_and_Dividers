module T_FlipFlop(
    input T,
    input clk,
    input reset,
    output Q,
    output notQ
);
   
    JK_FlipFlop jkFlipFlop(
    .J(T),
    .K(T),
    .clk(clk),
    .Q(Q),
    .reset(reset),
    .notQ(notQ)
    );
    
endmodule        