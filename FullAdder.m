function z = FullAdder(a, b, cin)
if a > 1 || a < 0 || b > 1 || b < 0 || cin > 1 || cin < 0
    fprintf("The given input is incorrect. Please try again.");
else
    out1 = GateXor(a,b);
    sum1 = GateXor(out1,cin);
    out2 = GateAnd(a,b);
    out3 = GateAnd(b,cin);
    out4 = GateAnd(cin,a);
    out5 = GateOr(out2, out3);
    carry = GateOr(out5, out4);
    z = [sum1 carry];
    truth_table("FullAdder");
end