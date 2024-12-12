```ada
procedure Example is
   subtype My_Sub is Integer range 1..10;
   X : My_Sub := 1;
begin
   X := X + 5; -- Potential error here
   if X > 10 then
      Put_Line("X is greater than 10");
   end if;
end Example;
```