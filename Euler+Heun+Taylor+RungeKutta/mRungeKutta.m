function D = mRungeKutta(x0, y0, h)
  c = (y0-x0)/h;
  A = [0,x0,y0,err(y0)];
  k1 = 0;
  k2 = 0;
  k3 = 0;
  k4 = 0;
  j = 0;
  for i = x0:(c-1)
    j++;
    x = x0 + i*h;
    k1 = F(x,y0);
    k2 = F(x+0.5*h,y0+0.5*k1*h);
    k3 = F(x+0.5*h,y0+0.5*k2*h);
    k4 = F(x+h,y0+k3*h);
    y = y0 + (k1+2*k2+2*k3+k4)*(h/6);
    y0 = y;
    A = [A;[j,x+h,y,err(y)]];
  endfor
  A
endfunction