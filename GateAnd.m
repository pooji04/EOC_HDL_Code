function z = GateAnd(x,y)

%And gate gives the result of multiplication of both inputs.

if x == 0
    if y == 0
        z = 0;
    elseif y == 1
        z = 0;
    else
        fprintf("One or both of the inputs is incorrect. Please try again. \n")
    end
elseif x == 1
    if y == 0
        z = 0;
    elseif y == 1
        z = 1;
    else
        fprintf("One or both of the inputs is incorrect. Please try again. \n")
    end
else
    fprintf("One or both of the inputs is incorrect. Please try again. \n")
end
