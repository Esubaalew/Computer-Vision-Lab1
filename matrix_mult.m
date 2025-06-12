
function C = matrix_mult(A, B)
  %MATRIX_MULT Multiplies two matrices without using the built-in operator.
  %
  % Usage:
  %   C = matrix_mult(A, B)
  %
  % Arguments:
  %   A : The first matrix (m x n).
  %   B : The second matrix (n x p).
  %
  % Returns:
  %   C : The resulting matrix product (m x p).
  %
  % Description:
  %   This function performs matrix multiplication using three nested loops.
  %   It first checks if the matrices are compatible for multiplication
  %   (i.e., the number of columns in A must equal the number of rows in B).
  %
  % Example:
  %   A = [1, 2; 3, 4];
  %   B = [5, 6; 7, 8];
  %   C = matrix_mult(A, B)
  %   % C will be [19, 22; 43, 50]

  [rowsA, colsA] = size(A);
  [rowsB, colsB] = size(B);

  % Check for dimension compatibility
  if colsA != rowsB
    error('Matrix dimensions are not compatible for multiplication. Columns of A must equal rows of B.');
  end

  % Initialize the result matrix with zeros
  C = zeros(rowsA, colsB);

  % Perform multiplication using nested loops
  for i = 1:rowsA
    for j = 1:colsB
      sum_val = 0;
      for k = 1:colsA % or 1:rowsB
        sum_val = sum_val + A(i, k) * B(k, j);
      end
      C(i, j) = sum_val;
    end
  end

end
