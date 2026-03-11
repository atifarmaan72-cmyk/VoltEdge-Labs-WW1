module ken(clock,count,clr,y);
input clock , clr ;
output [1:0] count ;
wire t1;
output y;

counter1 m1(clock,count,clr);
dff1 m2(count[1],t1,clock);
or g1(y,count[1],t1);

endmodule

module counter1(clock,count,clr);

input clock;
output reg [1:0] count;
input clr;
always@(posedge clock)
begin
if(clr)
count=0;
else if(count == 2)
count = 0;
else
count = count + 1;
end

endmodule


module dff1(d,q,clock);

input d,clock;

output reg q;

always@(negedge clock)
begin

q = d;

end

endmodule
