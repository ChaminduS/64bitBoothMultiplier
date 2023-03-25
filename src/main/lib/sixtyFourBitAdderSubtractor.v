module fa ( input wire i0, i1, cin, output wire sum, cout);
    assign sum = i0 ^ i1 ^ cin;
    assign cout = (i0 & i1) | (i1 & cin) | (cin & i0);
endmodule

module sixtyFourBitAdderSubtractor(
    input wire cin,
    input wire [63:0] onesComp_ip, i0 ,
    output wire [63:0] sum
//     output wire cout
 );

wire [63:0] temp;

genvar i;
generate

for (i=0; i<64; i=i+1)
    begin: generate_64_bit_adder
    if (i==0)
        fa f(i0[0], onesComp_ip[0], cin, sum[0], temp[0]);
    else 
        fa f(i0[i], onesComp_ip[i], temp[i-1], sum[i], temp[i]);
    end
    // assign cout = temp[63];
endgenerate

endmodule
