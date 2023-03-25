module tb_booth_substep;
wire signed [63:0] next_acc;
wire signed [63:0] next_Q;
wire q0_next;
reg signed [63:0] acc, Q;
reg q0;
reg signed [63:0] multiplicand;


booth_substep my_booth_substep(
    .acc(acc),
    .Q(Q),
    .q0(q0),
    .multiplicand(multiplicand),
    .next_acc(next_acc),
    .next_Q(next_Q),
    .q0_next(q0_next)
    );

//initial begin $dumpfile("tb_boothsalgo.vcd"); $dumpvars(0,tb); end

initial begin
$monitor($time,"   acc =",acc,", Q = ",Q,", q0= ",q0,", M =",multiplicand," => next_acc",next_acc,", next_Q =",next_Q," q0_next =",q0_next);

acc = 64'b0;
Q = 64'hF0F0F0F0F0F0F0F0;
q0 = 1'b0;
multiplicand =64'b1; 

#10

acc = 64'b0;
Q = 64'b1;
q0 = 1'b1;
multiplicand =64'b1;

#10

acc = 64'b0;
Q = 64'b1;
q0 = 1'b0;
multiplicand =64'b1;

#10

acc = 64'b11;
Q = 64'b10;
q0 = 1'b1;
multiplicand =64'b1;


end
endmodule
