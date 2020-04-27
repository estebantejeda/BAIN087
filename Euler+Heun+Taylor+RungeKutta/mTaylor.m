function D = mTaylor(x0, y0, h)
  c = (y0-x0)/h;
  A = [0,x0,y0,err(y0)];
  j = 0;
  for i = x0:(c-1)
    j++;
    x = x0 + i*h;
    y = y0 + F(x,y0)*h + (df(x,y0)/2)*h^2;
    y0 = y;
    A = [A;[j,x+h,y,err(y)]];
  endfor
  A
endfunction