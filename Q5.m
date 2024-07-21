x_minus2 = 0;
x_minus1 = 0;

for k = 0:1:200
    if k >= 2
            ek = 2;
    else
        ek = 1;
    end
    
    xk = ek + (10*(x_minus1))-(5*(x_minus2));
    disp(xk);
    x_minus2 = x_minus1;
    x_minus1 = xk; 
end
