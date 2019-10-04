function y = fun(x)
  if (x <= -2)
    y = sin(x)^2
  elseif (x >= 2)
    y = 1/(x+1)
  else
    y = 1-exp(-x)
  endif
endfunction