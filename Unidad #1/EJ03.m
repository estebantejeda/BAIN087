## (a) Ingrese a Octave las matrices A y B

A = [1,2,3;4,2,5;1,0,1]
B = (1/2)*[-2,2,-4;-1,2,-7;2,-2,6]

## (b) Calcule en Octave los productos matriciales de A*B y B*A

disp('A*B')
A*B
disp('B*A')
B*A

## (c) Qué observa de los resultados anteriores?
#
# Se observa que en ambos resultados se dio la matriz identidad
#
##

## (d) Calcule las normas 1, 2 e infinito de A y B

# Norma 1

disp('Norma 1 de A:')
disp(norma1(A))
disp('Norma 1 de B:')
disp(norma1(B))

# Norma Infinita

disp('Norma Infinita de A:')
disp(normaInf(A))
disp('Norma Infinita de B:')
disp(normaInf(B))

# Funciones

function y = norma1(X)
  for i = 1:length(X)
    A(1,i) = sum(abs(X(:,i)));
  endfor
  y = max(A);
endfunction

function y = normaInf(X)
  for i = 1:length(X)
    A(1,i) = sum(abs(X(i,:)));
  endfor
  y = max(A);
endfunction