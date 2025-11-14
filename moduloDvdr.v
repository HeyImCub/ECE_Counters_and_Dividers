module moduloDvdr(
input clk,
input reset,
input btnC,
output [2:0] state,
output mo
);

// wires for comparator
wire b0,b1,b2;
// wires from full adders to d flip flops
wire y0,y1,y2;

// full adder C wires
wire c0,c1;

wire countReached;
assign countReached = (b2 & ~b1 & b0);

wire resetLED;
assign resetLED = countReached | reset;

wire toggle;
assign toggle = countReached ^ mo;

D_FlipFlop d1(
    .D(y0),
    .reset(resetLED),
    .clk(clk),
    .Q(b0),
    .notQ()
);

D_FlipFlop d2(
    .D(y1),    
    .reset(resetLED),
    .clk(clk),
    .Q(b1),
    .notQ()
);

D_FlipFlop d3(
    .D(y2),
    .reset(resetLED),
    .clk(clk),
    .Q(b2),
    .notQ()
);

full_adder a1 (
    .A(b0),
    .B(1'b1),
    .Cin(1'b0),
    .Y(y0),
    .Cout(c0)
);

full_adder a2 (
    .A(b1),
    .B(1'b0),
    .Cin(c0),
    .Y(y1),
    .Cout(c1)
);

full_adder a3 (
    .A(b2),
    .B(1'b0),
    .Cin(c1),
    .Y(y2),
    .Cout()
);

D_FlipFlop dF(
    .D(toggle),
    .clk(clk),
    .reset(reset),
    .Q(mo),
    .notQ()   
);

assign state[0] = b0;
assign state[1] = b1;
assign state[2] = b2;


endmodule
