/*64 bit Addder/ Subtractor module for a booth multiplier*/

module getOnesComplement(
    input wire cin,
    input wire [63:0] i1,
    output wire [63:0] onesComp

);


//if cin == 1, onesComp = 1's complement, else onesComp = i1.
//this can be achieved using a simple XOR operation

/* generate block doesn't work properly. check!

// genvar i;
// generate

// for (i=0; i<64; i=i+1)
//     begin: generate_64_bit_xor
//         xor2 x(i1[0], cin, onesComp[0]);
//     end
// endgenerate

*/


xor2 x1 (i1[0], cin, onesComp[0]);
xor2 x2 (i1[1], cin, onesComp[1]);
xor2 x3 (i1[2], cin, onesComp[2]);
xor2 x4 (i1[3], cin, onesComp[3]);
xor2 x5 (i1[4], cin, onesComp[4]);
xor2 x6 (i1[5], cin, onesComp[5]);
xor2 x7 (i1[6], cin, onesComp[6]);
xor2 x8 (i1[7], cin, onesComp[7]);
xor2 x9 (i1[8], cin, onesComp[8]);
xor2 x10 (i1[9], cin, onesComp[9]);
xor2 x11 (i1[10], cin, onesComp[10]);
xor2 x12 (i1[11], cin, onesComp[11]);
xor2 x13 (i1[12], cin, onesComp[12]);
xor2 x14 (i1[13], cin, onesComp[13]);
xor2 x15 (i1[14], cin, onesComp[14]);
xor2 x16 (i1[15], cin, onesComp[15]);
xor2 x17 (i1[16], cin, onesComp[16]);
xor2 x18 (i1[17], cin, onesComp[17]);
xor2 x19 (i1[18], cin, onesComp[18]);
xor2 x20 (i1[19], cin, onesComp[19]);
xor2 x21 (i1[20], cin, onesComp[20]);
xor2 x22 (i1[21], cin, onesComp[21]);
xor2 x23 (i1[22], cin, onesComp[22]);
xor2 x24 (i1[23], cin, onesComp[23]);
xor2 x25 (i1[24], cin, onesComp[24]);
xor2 x26 (i1[25], cin, onesComp[25]);
xor2 x27 (i1[26], cin, onesComp[26]);
xor2 x28 (i1[27], cin, onesComp[27]);
xor2 x29 (i1[28], cin, onesComp[28]);
xor2 x30 (i1[29], cin, onesComp[29]);
xor2 x31 (i1[30], cin, onesComp[30]);
xor2 x32 (i1[31], cin, onesComp[31]);
xor2 x33 (i1[32], cin, onesComp[32]);
xor2 x34 (i1[33], cin, onesComp[33]);
xor2 x35 (i1[34], cin, onesComp[34]);
xor2 x36 (i1[35], cin, onesComp[35]);
xor2 x37 (i1[36], cin, onesComp[36]);
xor2 x38 (i1[37], cin, onesComp[37]);
xor2 x39 (i1[38], cin, onesComp[38]);
xor2 x40 (i1[39], cin, onesComp[39]);
xor2 x41 (i1[40], cin, onesComp[40]);
xor2 x42 (i1[41], cin, onesComp[41]);
xor2 x43 (i1[42], cin, onesComp[42]);
xor2 x44 (i1[43], cin, onesComp[43]);
xor2 x45 (i1[44], cin, onesComp[44]);
xor2 x46 (i1[45], cin, onesComp[45]);
xor2 x47 (i1[46], cin, onesComp[46]);
xor2 x48 (i1[47], cin, onesComp[47]);
xor2 x49 (i1[48], cin, onesComp[48]);
xor2 x50 (i1[49], cin, onesComp[49]);
xor2 x51 (i1[50], cin, onesComp[50]);
xor2 x52 (i1[51], cin, onesComp[51]);
xor2 x53 (i1[52], cin, onesComp[52]);
xor2 x54 (i1[53], cin, onesComp[53]);
xor2 x55 (i1[54], cin, onesComp[54]);
xor2 x56 (i1[55], cin, onesComp[55]);
xor2 x57 (i1[56], cin, onesComp[56]);
xor2 x58 (i1[57], cin, onesComp[57]);
xor2 x59 (i1[58], cin, onesComp[58]);
xor2 x60 (i1[59], cin, onesComp[59]);
xor2 x61 (i1[60], cin, onesComp[60]);
xor2 x62 (i1[61], cin, onesComp[61]);
xor2 x63 (i1[62], cin, onesComp[62]);
xor2 x64 (i1[63], cin, onesComp[63]);

endmodule

