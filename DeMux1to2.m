function z = DeMux1to2(in, sel)
if in > 1 || in < 0 || sel > 1 || sel < 0
    fprintf("The given input is incorrect. Please run the function again.");
else
    notsel = GateNot(sel);
    a = GateAnd(notsel, in);
    b = GateAnd(sel, in);
    z = [b a];
    truth_table("DeMux1to2");
    
end