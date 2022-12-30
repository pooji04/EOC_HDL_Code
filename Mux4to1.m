function z = Mux4to1(S0, S1, D0, D1, D2, D3)
if D0 > 1 || D0 < 0 || S1 > 1 || S1 < 0 || S0 > 1 || S0 < 0 || D1 > 1 || D1 < 0 || D2 > 1  || D2 < 0 || D3 > 1 || D3 < 0
    fprintf("The given input is incorrect. Please run the function again.");
else
    notS0 = GateNot(S0);
    notS1 = GateNot(S1);
    out1 = GateAnd(notS0, notS1);
    sum1 = GateAnd(out1, D0);
    out2 = GateAnd(notS1, S0);
    sum2 = GateAnd(out2, D1);
    out3 = GateAnd(S1, notS0);
    sum3 = GateAnd(out3, D2);
    out4 = GateAnd(S1, S0);
    sum4 = GateAnd(out4, D3);
    z1 = GateOr(sum1, sum2);
    z2 = GateOr(sum3, sum4);
    z = GateOr(z1, z2);
    truth_table("Mux4to1");
end
