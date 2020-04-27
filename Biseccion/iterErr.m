function iter = iterErr(x_i, x_d, tol)
  iter = (log(x_d-x_i)-log(tol))/log(2);
  iter = fix(iter);
  return
endfunction