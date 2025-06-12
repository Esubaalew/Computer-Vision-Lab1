

function arr = quick_sort(arr)
  %QUICK_SORT Sorts an array using the quicksort algorithm.
  %
  % Usage:
  %   sorted_array = quick_sort(input_array)
  %
  % Arguments:
  %   arr : An array of numbers to be sorted.
  %
  % Returns:
  %   arr : The sorted array.
  %
  % Example:
  %   data = [10, 80, 30, 90, 40, 50, 70];
  %   sorted_data = quick_sort(data)
  %   % sorted_data will be [10, 30, 40, 50, 70, 80, 90]

  n = length(arr);
  if n <= 1
    return; % Array is already sorted
  end

  
  pivot = arr(end);
  
  
  
  left = arr(arr(1:end-1) < pivot);
  
  right = arr(arr(1:end-1) >= pivot);
  
  
  arr = [quick_sort(left), pivot, quick_sort(right)];
  
end
