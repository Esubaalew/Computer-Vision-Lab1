

function result = recursive_factorial(n)
  %RECURSIVE_FACTORIAL Computes the factorial of a number using recursion.
  %
  % Usage:
  %   f = recursive_factorial(n)
  %
  % Arguments:
  %   n : A non-negative integer.
  %
  % Returns:
  %   result : The factorial of n (n!).
  %
  % Example:
  %   f = recursive_factorial(5)
  %   % f will be 120

  
  if n < 0 || rem(n, 1) != 0
    error('Input must be a non-negative integer.');
  end

  
  if n == 0
    result = 1;
  else
    
    result = n * recursive_factorial(n - 1);
  end

end
