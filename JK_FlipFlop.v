module JK_FlipFlop(
    input J,
    input K,
    input clk,
    input reset,
    output Q,
    output notQ
);
 
    assign d = (Q & ~K) | (~Q & J);
    
    D_FlipFlop DFlipFlop(
        .D(d),
        .clk(clk),
        .Q(Q),
        .reset(reset),
        .notQ(notQ)
    );
    

endmodule        