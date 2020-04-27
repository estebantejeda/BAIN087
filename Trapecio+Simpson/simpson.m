function I = simpson(a, b, n=2)
   h = (b-a)/n;
   sumP = 0;
   sumI = 0;
   sum = 0;
   for i = 1:(n-1)
     X(i) = f(a+i*h);
   endfor
   for i = 1:round(n/2-1)
     sumP = sumP+2*X(2*i);
   endfor
   for i = 1:round(n/2)
     sumI = sumI + 4*X(2*i-1);
   endfor
   sum = f(a)+sumP+sumI+f(b);
   I = ((b-a)/(3*n))*sum;
   return
endfunction