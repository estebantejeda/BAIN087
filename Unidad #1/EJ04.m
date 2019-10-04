A = zeros(92,108);
for i = 1:length(A(:,end))
  for j = 1:length(A(end,:))
    if i == j
      A(i,j) = 3;
    endif
    if (i == j-1)
      A(i,j) = 4;
    endif
    if (i == j-2)
      A(i,j) = 5;
    endif
  endfor
endfor
disp(A)