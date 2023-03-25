module booth_substep(
    input wire signed [63:0] acc,
    input wire signed [63:0] Q,
    input wire signed q0,
    input wire signed [63:0] multiplicand,
    output reg signed [63:0] next_acc,
    output reg signed [63:0] next_Q,
    output reg q0_next
);

wire [63:0] addsub_temp;
wire [63:0] int_ip;

getOnesComplement g0(.cin(Q[0]), .i1(multiplicand), .onesComp(int_ip));

sixtyFourBitAdderSubtractor as0(.cin(Q[0]), .onesComp_ip(int_ip), .i0(acc), .sum(addsub_temp));

    always @(*) begin
    if (Q[0]== q0) begin
        q0_next = Q[0];
        next_Q = Q >> 1;
        next_Q[63] = acc[0];
        next_acc = acc>>1;
        if (acc[63]==1)
            next_acc[63] = 1;
    end

    else begin 
        q0_next = Q[0];
        next_Q = Q>>1;
        next_Q[63] = addsub_temp[0];
        next_acc = addsub_temp>>1;
        if (addsub_temp[63]==1)
            next_acc[63] = 1;
    end
end

endmodule