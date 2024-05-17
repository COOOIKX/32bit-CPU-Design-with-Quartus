

module LEDHex(in, LED7S) ;
		 input [3:0] in ;
		 output reg [6:0] LED7S ;
		 always@(in)
		 begin
		      case(in)
					  4'b0000:LED7S <= 7'b1000000;
					  4'b0001:LED7S <= 7'b1111001;
					  4'b0010:LED7S <= 7'b0100100;
					  4'b0011:LED7S <= 7'b0110000;
					  4'b0100:LED7S <= 7'b0011001;
					  4'b0101:LED7S <= 7'b0010010;
					  4'b0110:LED7S <= 7'b0000010;
					  4'b0111:LED7S <= 7'b1111000;
					  4'b1000:LED7S <= 7'b0000000;
					  4'b1001:LED7S <= 7'b0010000;
					  4'b1010:LED7S <= 7'b0001000;
					  4'b1011:LED7S <= 7'b0000011;
					  4'b1100:LED7S <= 7'b1000110;
					  4'b1101:LED7S <= 7'b0100001;
					  4'b1110:LED7S <= 7'b0000110;
					  4'b1111:LED7S <= 7'b0001110;
					  default :LED7S <= 7'b1000000;
				endcase
		 end
endmodule
