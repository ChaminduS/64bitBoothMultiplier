module booth_multiplier(
    input signed [63:0] multiplier, multiplicand,
    output signed [127:0] product
);

wire signed [63:0] Q[0:63];
wire signed [63:0] acc[0:63];
wire signed [63:0] q0;
wire qout;

assign acc[0] = 64'h0000000000000000;
assign Q[0] = multiplier;

genvar i;

generate

for (i=0; i<64; i=i+1)
    begin: generate_64_booth_substeps
    if (i==63)
        booth_substep b(.acc(acc[i]), .Q(Q[i]), .q0(q0[i]), .multiplicand(multiplicand), .next_acc(product[127:64]), .next_Q(product[63:0]), .q0_next(qout));
    else 
        booth_substep b(.acc(acc[i]), .Q(Q[i]), .q0(q0[i]), .multiplicand(multiplicand), .next_acc(acc[i+1]), .next_Q(Q[i+1]), .q0_next(q0[i+1]));
    end
    
endgenerate

endmodule