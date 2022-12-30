function z = Mux8to1(S2, S1, S0)
if S2 > 1 || S2 < 0 || S1 > 1 || S1 < 0 || S0 > 1 || S0 < 0
    fprintf("The given input is incorrect. Please run the function again.");
else
    D0 = 0;
    D1 = 0;
    D2 = 1;
    D3 = 0;
    D4 = 1;
    D5 = 1;
    D6 = 0;
    D7 = 1;
    if S2 == 0 && S1 == 0 && S0 == 0
        z = D0;
    elseif S2 == 0 && S1 == 0 && S0 == 1
        z = D1;
    elseif S2 == 0 && S1 == 1 && S0 == 0
        z = D2;
    elseif S2 == 0 && S1 == 1 && S0 == 1
        z = D3;
    elseif S2 == 1 && S1 == 0 && S0 == 0
        z = D4;
    elseif S2 == 1 && S1 == 0 && S0 == 1
        z = D5;
    elseif S2 == 1 && S1 == 1 && S0 == 0
        z = D6;
    elseif S2 == 1 && S1 == 1 && S0 == 1
        z = D7;
    end
    truth_table("Mux8to1");
end
