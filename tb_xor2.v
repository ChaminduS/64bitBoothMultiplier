module tb_xor2;

wire c;
reg  a;
reg b;


xor2 my_xor2(.a(a),.b(b),.c(c));

//initial begin $dumpfile("tb_boothsalgo.vcd"); $dumpvars(0,tb); end

initial begin
$monitor($time,"       ",a," ^",b," = ", c);

a = 1'b0;
b = 1'b0;

#10

a = 1'b0;
b = 1'b1;

#10

a = 1'b1;
b = 1'b0;

#10

a = 1'b1;
b = 1'b1;

end

endmodule