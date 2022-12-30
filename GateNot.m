function z = GateNot(x)
 
%Not Gate gives the complement of the input given.

%If the input is 0, the value 1 is returned.
if x == 0 
    z = 1;
%If the input is 1, the value 0 is returned.
elseif x == 1
    z = 0;
%If any other value is entered, an error prompt is displayed.
else 
    fprintf("This is an invalid input. Please try again.")
end