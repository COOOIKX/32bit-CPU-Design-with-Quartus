
module Comp32(A,B,GT,LT,EQ) ;
	input [31:0] A, B;
   output GT, LT, EQ;

   assign GT = (A > B) ? 1 : 0;
   assign LT = (A < B) ? 1 : 0;
   assign EQ = (A == B) ? 1 : 0;
endmodule
