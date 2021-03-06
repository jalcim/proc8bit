module gate_and3(a,b,c, s);
   input a,b,c;
   output s;
   assign s =  a & b & c;
endmodule // and4

module gate_and4(a,b,c,d, s);
   input a,b,c,d;
   output s;
   assign s =  a & b & c & d;
endmodule // and4

module gate_and5(a,b,c,d,e, s);
   input a,b,c,d,e;
   output      s;
   assign s = a & b & c & d & e;
endmodule // and5

module multigate_and8(bus, s);
   input [7:0] bus;
   output      s;
   assign s = bus[0] & bus[1] & bus[2] & bus[3]
	      & bus[4] & bus[5] & bus[6] & bus[7];
endmodule // and8

module gate_or4(a, b, c, d, s);
   input a, b, c, d;
   output s;
   assign s = a | b | c | d;
endmodule // gate_or4

module multigate_or8(bus, s);
   input [7:0] bus;
   output 	s; 	
   assign s = bus[0] | bus[1] | bus[2] | bus[3]
	      | bus[4] | bus[5] | bus[6] | bus[7];
endmodule // or16

module multigate_or16(bus, s);
   input [15:0] bus;
   output 	s; 	
   assign s = bus[0] | bus[1] | bus[2] | bus[3]
	      | bus[4] | bus[5] | bus[6] | bus[7]
	      | bus[8] | bus[9] | bus[10] | bus[11]
	      |  bus[12] | bus[13] | bus[14] | bus[15];
endmodule // or16

module multigate_nand3(in1, in2, in3, out);
   input in1, in2, in3;
   output out;
   wire [1:0] line;

   gate_nand nand0(in1, in2, line[0]);
   gate_nand nand1(in2, in3, line[1]);   
   gate_or or0(line[0], line[1], out);
endmodule // multigate_nand3
   
