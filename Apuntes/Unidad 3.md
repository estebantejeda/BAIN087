 # Método del trapecio

$$
\int_{x_0}^{x_n} f(x)dx = \frac{h}{2} (f(x_0)+2\sum_{i=1}^{n-1}f(x_i)+f(x_n))
\\
x_i=x_0+ih; ~~ i=0,\dots,n
\\
h=\frac{x_n-x_0}{n}
$$

### Error de truncamiento

$$
\epsilon = -\frac{(x_n-x_0)^3}{12n^2}f''(c)
$$

### n para un error dado

$$
n = \text{ent}(\sqrt{\frac{(x_n-x_0)^3}{12\epsilon}f''(c)})
\\
f''(c) = \max_{x_0\leqslant x \leqslant x_n}|f''(x)|
$$

# Método de Simpson

$$
\int_{x_o}^{x_n}f(x) = \frac{h}{3}(f(x_0) + 4 \sum_{i=1}^{n/2}f(x_{2i-1}) + 2 \sum_{i=1}^{n/2-1}f(x_{2i}) + f(x_n))
\\
x_i=x_0+ih; ~~ i=0,\dots,n
\\
h=\frac{x_n-x_0}{n}
$$

## Error de truncamiento

$$
\epsilon = -\frac{(x_n-x_0)^5}{180n^4}f^{(iv)}(c)
$$

## n para un error dado

$$
n = \text{ent}(\sqrt[4]{\frac{(x_n-x_0)^5}{180\epsilon}f^{(iv)}(c)})
\\
f^{(iv)}(c) = \max_{x_0\leqslant x \leqslant x_n}|f^{(iv)}(x)|
$$

# Métodos de Runge-Kutta

Dado:
$$
\frac{dy}{dx}=f(x,y)
$$

## Método de Euler

$$
y_{i+1} = y_i+f(x_i,y_i)h
\\
x_i = x_0+ih
$$

## Método para series de Taylor

$$
y_{i+1} = y_i+f(x_i,y_i)h+\frac{f'(x_i,y_i)}{2}h^2
$$

$$
f'(x_i,y_i) = \frac{\partial f(x,y)}{\partial x} + \frac{\partial f(x,y)}{\partial y} \frac{dx}{dy}
$$

## Método de Heun

$$
y_{i+1} = y_i + \frac{h}{2}(f(x_i,y_i)+f(x_{i+1},y_i)+hf(x_i,y_i)))
\\
x_i = x_0+ih
$$

## Método Runge-Kutta

$$
y_{i+1}=y_i + \frac{h}{6}(k_1+2k_2+2k_3+k_4)
$$

$$
k_1 = f(x_i,y_i)
\\
k_2 = f(x_i+\frac{1}{2}h,y_i+\frac{1}{2}k_1h)
\\
k_3 = f(x_i+\frac{1}{2}h,y_i+\frac{1}{2}k_2h)
\\
k_4 = f(x_i+h,y_i+k_3h)
$$
