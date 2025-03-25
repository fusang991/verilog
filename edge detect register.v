module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output reg [31:0] out
);reg [31:0]pre;
    always@(posedge clk) begin
        pre<=in;
        if(reset) out<=32'd0;
        else out<=((~in)&pre)|out;
    end
        

endmodule