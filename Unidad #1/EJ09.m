A = zeros(10)
for i = 1:length(A(:,end))
  for j = 1:length(A(end,:))
    if (mod(i,2) == 1)
      A(i,j) = j;
    else
      A(i,j) = 11-j;
    endif
  endfor
endfor