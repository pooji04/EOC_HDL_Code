function z = DeMux1to4(in, S1, S0)
D0 = 0;
D1 = 0;
D2 = 0;
D3 = 0;
if in > 1 || in < 0 || S1 > 1 || S1 < 0 || S0 > 1 || S0 < 0
    fprintf("The given input is incorrect. Please try again.");
else
    if in == 0 && S1 == 0 && S0 == 0
        D0 = 0;
    elseif in == 0 && S1 == 0 && S0 == 1
            D1 = 0;
    elseif in == 0 && S1 == 1 && S0 == 0
            D2 = 0;
    elseif in == 0 && S1 == 1 && S0 == 1
            D3 = 0;
    elseif in == 1 && S1 == 0 && S0 == 0
            D0 = 1;
    elseif in == 1 && S1 == 0 && S0 == 1
            D1 = 1;
    elseif in == 1 && S1 == 1 && S0 == 0
            D2 = 1;
    elseif in == 1 && S1 == 1 && S0 == 1
            D3 = 1;
    end
    z = [D3 D2 D1 D0];
    truth_table("DeMux1to4");
end