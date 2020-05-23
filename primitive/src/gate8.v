module gate_not8 (e1, s);
   input [7:0] e1;
   output [7:0] s;

   assign s[0] = ~e1[0];
   assign s[1] = ~e1[1];
   assign s[2] = ~e1[2];
   assign s[3] = ~e1[3];
   assign s[4] = ~e1[4];
   assign s[5] = ~e1[5];
   assign s[6] = ~e1[6];
   assign s[7] = ~e1[7];
endmodule // not

module gate_and8 (e1, e2, s);
   input [7:0] e1,e2;
   output [7:0] s;

   assign s[0] = e1[0] & e2[0];
   assign s[1] = e1[1] & e2[1];
   assign s[2] = e1[2] & e2[2];
   assign s[3] = e1[3] & e2[3];
   assign s[4] = e1[4] & e2[4];
   assign s[5] = e1[5] & e2[5];
   assign s[6] = e1[6] & e2[6];
   assign s[7] = e1[7] & e2[7];
endmodule // and

module gate_or8 (e1, e2, s);
   input [7:0] e1, e2;
   output [7:0] s;

   assign s[0] = e1[0] | e2[0];
   assign s[1] = e1[1] | e2[1];
   assign s[2] = e1[2] | e2[2];
   assign s[3] = e1[3] | e2[3];
   assign s[4] = e1[4] | e2[4];
   assign s[5] = e1[5] | e2[5];
   assign s[6] = e1[6] | e2[6];
   assign s[7] = e1[7] | e2[7];
endmodule // or

module gate_xor8 (e1, e2, s);
   input [7:0] e1, e2;
   output [7:0] s;
 
   assign s[0] = e1[0] ^ e2[0];
   assign s[1] = e1[1] ^ e2[1];
   assign s[2] = e1[2] ^ e2[2];
   assign s[3] = e1[3] ^ e2[3];
   assign s[4] = e1[4] ^ e2[4];
   assign s[5] = e1[5] ^ e2[5];
   assign s[6] = e1[6] ^ e2[6];
   assign s[7] = e1[7] ^ e2[7];
endmodule // xor

module gate_nand8 (e1, e2, s);
   input [7:0] e1, e2;
   output [7:0] s;

   assign s[0] = e1[0] ~& e2[0];
   assign s[1] = e1[1] ~& e2[1];
   assign s[2] = e1[2] ~& e2[2];
   assign s[3] = e1[3] ~& e2[3];
   assign s[4] = e1[4] ~& e2[4];
   assign s[5] = e1[5] ~& e2[5];
   assign s[6] = e1[6] ~& e2[6];
   assign s[7] = e1[7] ~& e2[7];
endmodule // nand
  
module gate_nor8 (e1, e2, s);
   input [7:0] e1, e2;
   output [7:0] s;

   assign s[0] = e1[0] ~| e2[0];
   assign s[1] = e1[1] ~| e2[1];
   assign s[2] = e1[2] ~| e2[2];
   assign s[3] = e1[3] ~| e2[3];
   assign s[4] = e1[4] ~| e2[4];
   assign s[5] = e1[5] ~| e2[5];
   assign s[6] = e1[6] ~| e2[6];
   assign s[7] = e1[7] ~| e2[7];
endmodule // nor