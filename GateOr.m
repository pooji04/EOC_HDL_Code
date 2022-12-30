function z = GateOr(x, y)

%Or gate gives the result of addition of both input.

%If both inputs are 0, output is 0.
if x == 0 
    if y == 0
        z = 0;
    elseif y == 1
        z = 1;
    else
        fprintf("The input for y is wrong. \n")
    end
elseif x == 1
    if y == 0
        z = 1;
    elseif y == 1
        z = 1;
    else 
        fprintf("The input for y is wrong. \n")
    end
else
    fprintf("The inputs are wrong. Please try again. \n")
end
