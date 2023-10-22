`timescale 1ns / 1ps
module demux_tb;
reg d,s0,s1,y0;
wire y1,y2,y3;
demux DUT(.d(d),.s0(s0),.s1(s1),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
initial
begin 
d=1'b0;
s0=1'b0;
s1=1'b0;
y0=1'b0;
#100
#100 d=1'b0; s0=1'b0; s1=1'b0; y0=1'b0;
#100 d=1'b1; s0=1'b0; s1=1'b1; y0=1'b1;
#100 d=1'b1; s0=1'b1; s1=1'b1; y0=1'b1;
end
endmodule
