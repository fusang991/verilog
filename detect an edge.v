module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);reg [7:0]pre;
    always@(posedge clk) begin
        pre<=in;
        pedge<=(pre~^8'b00000000)&(in~^8'b11111111);
    end


endmodule