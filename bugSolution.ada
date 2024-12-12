```ada
procedure Example_Solution is
   subtype My_Sub is Integer range 1..10;
   X : My_Sub := 1;
begin
   -- Solution 1: Check before incrementing
   if X + 5 <= My_Sub'Last then
      X := X + 5;
   else
      Put_Line("Increment would violate subtype constraint");
   end if;
   
   -- Solution 2: Using a conditional statement
   -- if X + 5 > My_Sub'Last then
   --    X := My_Sub'Last;
   -- else
   --    X := X + 5;
   -- end if;

   -- Solution 3:  Using a function to handle potential overflow
   -- function Safe_Increment(Value : My_Sub; Increment : Integer) return My_Sub is
   -- begin
   --    return My_Sub(Integer'Min(Integer(Value + Increment), Integer(My_Sub'Last)));
   -- end Safe_Increment;
   -- X := Safe_Increment(X, 5);
   
   Put_Line("X = " & X'Image); 
end Example_Solution;
```