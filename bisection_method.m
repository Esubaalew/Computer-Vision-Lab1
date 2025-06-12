

function root = bisection_method(f, a, b, tol)
  %BISECTION_METHOD Approximates a root of a function using the bisection method.
  %
  % Usage:
  %   root = bisection_method(f, a, b, tol)
  %
  % Arguments:
  %   f   : A handle to the function for which to find a root.
  %   a   : The start of the interval.
  %   b   : The end of the interval.
  %   tol : The tolerance (stopping criterion). The algorithm stops when the
  %         interval width is less than tol.
  %
  % Returns:
  %   root : The approximated root of the function.
  %
  % Description:
  %   The function requires that f(a) and f(b) have opposite signs.
  %
  % Example:
  %   % Find the root of f(x) = x^2 - 2 in the interval [1, 2]
  %   f = @(x) x^2 - 2;
  %   root = bisection_method(f, 1, 2, 1e-6)
  %   % root will be approximately 1.41421

  if f(a) * f(b) >= 0
    error('Bisection method requires f(a) and f(b) to have opposite signs.');
  end

  while (b - a) > tol
    c = (a + b) / 2; 
    if f(c) == 0
      
      root = c;
      return;
    elseif f(a) * f(c) < 0
      
      b = c;
    else
      
      a = c;
    end
  end

  
  root = (a + b) / 2;

end
