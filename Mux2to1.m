function z = Mux2to1(D1, D0, S0)
if D0 > 1 || D0 < 0 || D1 > 1 || D1 < 0 || S0 > 1 || S0 < 0
    fprintf("The given input is incorrect. Please run the function again.");
else
    notS0 = GateNot(S0);
    out1 = GateAnd(notS0, D0);
    out2 = GateAnd(S0, D1);
    z = GateOr(out1, out2);
    truth_table("Mux2to1");
end