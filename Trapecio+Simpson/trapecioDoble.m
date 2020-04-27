function J = trapecioDoble(a, b, m = n, n = m)
  h = (b-a)/n;
  J1 = 0;
  J2 = 0;
  for i = 0:n  
    x = a+i*h;
    HX = (d(x)-c(x))/m;
    K1 = Fxy(x, c(x)) + Fxy(x, d(x));
    K2 = 0; 
    for j = 1:(m-1)
      y = c(x) + j*HX;
      K2 = K2 + Fxy(x,y);
    endfor 
    L = ((K1+2*K2)*HX)/2;
    if (i == 0 || i == n) J1 = J1 + L;
    else J2 = J2 + L;
    endif
  endfor
  J = (h*(J1+2*J2))/2;
  return;
endfunction