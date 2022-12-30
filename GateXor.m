function z = GateXor(x,y)

if x == 0
    if y == 0
        a1 = GateNot(x);
        b1 = GateNot(y);
        a1b = GateAnd(a1,y);
        ab1 = GateAnd(x, b1);
        z = GateOr(a1b,ab1);
    elseif y == 1
        a1 = GateNot(x);
        b1 = GateNot(y);
        a1b = GateAnd(a1,y);
        ab1 = GateAnd(x, b1);
        z = GateOr(a1b,ab1);
    else
        fprintf("One or both of the inputs is incorrect. Please try again.")
    end
elseif x == 1
    if y == 0
        a1 = GateNot(x);
        b1 = GateNot(y);
        a1b = GateAnd(a1,y);
        ab1 = GateAnd(x, b1);
        z = GateOr(a1b,ab1);
    elseif y == 1
        a1 = GateNot(x);
        b1 = GateNot(y);
        a1b = GateAnd(a1,y);
        ab1 = GateAnd(x, b1);
        z = GateOr(a1b,ab1);
    else
        fprintf("One or both of the inputs is incorrect. Please try again.")
    end
else
    fprintf("One or both of the inputs are incorrect. Please try again.")
end