module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output reg [31:0] out
);reg [31:0]pre;
    always@(posedge clk,posedge reset) begin
        pre<=in;
        if(reset) out<=32'd0;
        else out<=(pre~^32'heeeeeeee) & (in ~^32'd0);
    end
        

endmodule