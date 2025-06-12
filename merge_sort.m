

function arr = merge_sort(arr)
  %MERGE_SORT Sorts an array using the merge sort algorithm.
  %
  % Usage:
  %   sorted_array = merge_sort(input_array)
  %
  % Arguments:
  %   arr : An array of numbers to be sorted.
  %
  % Returns:
  %   arr : The sorted array.
  %
  % Example:
  %   data = [38, 27, 43, 3, 9, 82, 10];
  %   sorted_data = merge_sort(data)
  %   % sorted_data will be [3, 9, 10, 27, 38, 43, 82]

  n = length(arr);
  if n <= 1
    return; % Array is already sorted
  end

  mid = floor(n / 2);
  left = arr(1:mid);
  right = arr(mid+1:end);

  
  left = merge_sort(left);
  right = merge_sort(right);

  
  arr = merge(left, right);
end

function result = merge(left, right)
  
  lenL = length(left);
  lenR = length(right);
  result = zeros(1, lenL + lenR);
  i = 1; % Pointer for left array
  j = 1; % Pointer for right array
  k = 1; % Pointer for result array

  while i <= lenL && j <= lenR
    if left(i) <= right(j)
      result(k) = left(i);
      i = i + 1;
    else
      result(k) = right(j);
      j = j + 1;
    end
    k = k + 1;
  end

  
  while i <= lenL
    result(k) = left(i);
    i = i + 1;
    k = k + 1;
  end
  while j <= lenR
    result(k) = right(j);
    j = j + 1;
    k = k + 1;
  end
end
