module tb_sixtyFourBitAdderSubtractor;

reg tb_cin;
reg [63:0] tb_int_ip, tb_i0;
wire [63:0] tb_sum;
// wire tb_cout;

sixtyFourBitAdderSubtractor my_sixtyFourBitAdderSubtractor(.cin(tb_cin),.onesComp_ip(tb_int_ip),.i0(tb_i0),.sum(tb_sum)/*,.cout(tb_cout)*/);

//initial begin $dumpfile("tb_boothsalgo.vcd"); $dumpvars(0,tb); end

initial begin
$monitor($time,"       ",tb_i0," + ",tb_int_ip," + ",tb_cin,"  => sum =", tb_sum,/*" cout =",tb_cout*/);

tb_cin = 1'b0;
tb_int_ip = 64'h0000000000000000;
tb_i0 = 64'hFFFFFFFFFFFFFFFF;

#10

tb_cin = 1'b0;
tb_int_ip = 64'h0000000000000000;
tb_i0 = 64'h0000000000000000;

#10

tb_cin = 1'b1;
tb_int_ip = 64'h0000000000000000;
tb_i0 = 64'hFFFFFFFFFFFFFFFF;

#10

tb_cin = 1'b0;
tb_int_ip = 64'hF0F0F0F0F0F0F0F0;
tb_i0 = 64'h0F0F0F0F0F0F0F0F;


end

endmodule