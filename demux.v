`timescale 1ns / 1ps
module demux(d,s0,s1,y0,y1,y2,y3);
input d,s0,s1,y0;
output y1,y2,y3;
wire s1bar,s0bar;
not(s1bar,s1);
not(s0bar,s0);
and(y0,d,s0bar,s1bar);
and(y1,d,s0,s1bar);
and(y2,d,s0bar,s1);
and(y3,d,s0,s1);
endmodule
