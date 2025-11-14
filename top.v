module top(
    input btnC,
    input btnU,
    output [6:0] led
    );
   
rippleCntr r (
    .clk(btnC),
    .reset(btnU),
    .fQ(led[2:0])
);

moduloDvdr md(
    .clk(btnC),
    .reset(btnU),
    .btnC(btnC),
    .state(led[5:3]),
    .mo(led[6])
);
endmodule
