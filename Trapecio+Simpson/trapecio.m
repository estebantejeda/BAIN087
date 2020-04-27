function I = trapecio(a, b, n=1)
  h = (b-a)/n;
  sum = 0;
  for i = 1:(n-1)
    sum = sum+2*f(a+i*h);
  endfor
  sum = f(a)+sum+f(b);
  I = ((b-a)/(2*n))*sum;
  return
endfunction