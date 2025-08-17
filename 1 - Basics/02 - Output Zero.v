module top_module(output zero);// Module body starts after semicolon
	assign zero = 0;
endmodule


assign one = 1'b1;
assign zero = 1'b0;

{3'b111, 3'b000} => 6'b111000
{1'b1, 1'b0, 3'b101} => 5'b10101
{4'ha, 4'd10} => 8'b10101010     // 4'ha and 4'd10 are both 4'b1010 in binary
                                  // 4 ' Hexa A = 10 in Decimal = 1010 in binary
