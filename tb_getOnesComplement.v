module tb_getOnesComplement;

wire [63:0] out;
reg [63:0] a;
reg c;


getOnesComplement my_getOnesComplement(.cin(c),.i1(a),.int_ip(out));

//initial begin $dumpfile("tb_boothsalgo.vcd"); $dumpvars(0,tb); end

initial begin
$monitor($time,"       ",a," ~ = ", out);

a = 64'hFFFFFFFFFFFFFFFF;
c = 1'b0;

#10

a = 64'h0000000000000000;
c = 1'b0;

#10

a = 64'hF0F0F0F0F0F0F0F0;
c = 1'b0;

#10

a = 64'hFFFFFFFFFFFFFFFF;
c = 1'b1;

#10

a = 64'h0000000000000000;
c = 1'b1;

#10

a = 64'hF0F0F0F0F0F0F0F0;
c = 1'b1;

end

endmodule