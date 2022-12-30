function z = DeMux1to8(in, S2, S1, S0)
if in > 1 || in < 0 || S0 > 1 || S0 < 0 || S1 > 1 || S1 < 0 || S2 > 1 || S2 < 0
    fprintf("The given input is incorrect. Please try again.");
else
    z = [0 0 0 0 0 0 0 0];
    if S2 == 0 && S1 == 0 && S0 == 0
        z(8) = in;
    elseif S2 == 0 && S1 == 0 && S0 == 1
        z(7) = in;
    elseif S2 == 0 && S1 == 1 && S0 == 0
        z(6) = in;
    elseif S2 == 0 && S1 == 1 && S0 == 1
        z(5) = in;
    elseif S2 == 1 && S1 == 0 && S0 == 0
        z(4) = in;
    elseif S2 == 1 && S1 == 0 && S0 == 1
        z(3) = in;
    elseif S2 == 1 && S1 == 1 && S0 == 0
        z(2) = in;
    elseif S2 == 1 && S1 == 1 && S0 == 1
        z(1) = in;
    truth_table("DeMux1to8");
    end
end