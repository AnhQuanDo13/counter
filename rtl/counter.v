module counter (clk, rst_n, count_en, count_clr, count, overflow);
    input wire clk;
    input wire rst_n;
    input wire count_en;
    input wire count_clr;
    output reg [7:0] count;
    output wire overflow;

	assign overflow = (count == 8'hff);
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        count <= 8'b0;
    end else if (count_clr) begin
        count <= 8'b0;
    end else if (count_en) begin
            count <= count + 1;
        end else begin
            count <= count;
        end
    
end

endmodule

