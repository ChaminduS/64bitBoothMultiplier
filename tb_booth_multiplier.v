module tb_booth_multiplier;
wire signed [127:0] c;
reg signed [63:0] a,b;


booth_multiplier my_booth_multiplier(.multiplier(a),.multiplicand(b),.product(c));

//initial begin $dumpfile("tb_boothsalgo.vcd"); $dumpvars(0,tb); end

initial begin
$monitor($time,"       ",a," *",b," = ", c);

b = 64'b1;
a = 64'b1;

#10

a = 64'h0000000000000000;
b = 64'h0000000000000000;

#10

a = 64'hFFFFFFFFFFFFFFFF;
b = 64'h0000000000000000;

#10

a = 64'h000000000000000F;
b = 64'h0000000000000001;

#10  

a = 64'h0000000000000230;
b = 64'h0000000000000002;

#10

a = 64'hF000000000000000;
b = 64'h0000000000000001;

#10

a = 64'h8000000000000001;
b = 64'h0000000000000005;

end
endmodule
