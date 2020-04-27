function x_c = biseccion(x_i, x_d, maxIter, tol)
  x_c = prom(x_i,x_d);
  k = 0;
  % [iteraciones, x-izq, x-der, f(x-izq), f(x-der), prom(x-izq, z-der), f(prom(x-izq, x-der)), % error estimado]
  A = [k, x_i, x_d, f(x_i), f(x_d), prom(x_i, x_d),f(prom(x_i, x_d)), 100];
  while (k < maxIter && abs(f(x_c))>tol)  
    if(f(x_i)*f(x_c)<0)
      x_d = x_c;
    else
      x_i = x_c;
    endif
    x_ca = x_c;
    x_c = prom(x_i, x_d);
    k = k+1;
    A = [A;[k x_i, x_d, f(x_i), f(x_d), prom(x_i, x_d),f(prom(x_i, x_d)), errEstimado(x_c, x_ca)]];
  endwhile
  A; % Quitar puntoycoma si se desea ver la tabla con los valores
  return
endfunction

function p = prom(x, y)  
  p = (x+y)/2;
  return
endfunction

function err = errEstimado(x, y)
  err = abs((x-y)/x)*100;
  return
endfunction