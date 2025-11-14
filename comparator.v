
module comparator(
    input [2:0] A,
    output reset
    );
assign reset = (A == 3'b110);
endmodule
