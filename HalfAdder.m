function z = HalfAdder(a,b);
if a > 1 || a < 0 || b > 1 || b < 0 
    fprintf("The given input is incorrect. Please try again.");
else
    sum1 = GateXor(a,b);
    carry = GateAnd(a,b);
    z = [sum1 carry];
    truth_table("HalfAdder");
end