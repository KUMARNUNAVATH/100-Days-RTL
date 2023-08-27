module Comparator(a,b,eq,ls,gt);
input [2:0] a,b;
output reg eq,ls,gt;

always @(*)
begin
 if(a==b)
  begin
   eq=1;
   ls=0;
   gt=0;
  end
 else if(a>b)
  begin
   eq=0;
   ls=0;
   gt=1;
  end
else if(a<b)
  begin
   eq=0;
   ls=1;
   gt=0;
  end
end
endmodule 