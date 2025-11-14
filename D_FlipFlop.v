module D_FlipFlop(
    input D, reset,
    input clk,
    output reg Q,
    output notQ
);    
    initial begin
        Q <= 0;
    end
    
    always @(posedge clk) begin
        if (reset) begin
            Q <= 0;
        end
        else begin
            Q <= D;
        end
    end
    
    assign notQ = ~Q;
    

endmodule
