

function arr = bubble_sort(arr)
  %BUBBLE_SORT Sorts an array using the bubble sort algorithm.
  %
  % Usage:
  %   sorted_array = bubble_sort(input_array)
  %
  % Arguments:
  %   arr : An array of numbers to be sorted.
  %
  % Returns:
  %   arr : The sorted array.
  %
  % Example:
  %   data = [5, 1, 4, 2, 8];
  %   sorted_data = bubble_sort(data)
  %   % sorted_data will be [1, 2, 4, 5, 8]

  n = length(arr);
  for i = 1:(n-1)
    for j = 1:(n-i)
      if arr(j) > arr(j+1)
        
        temp = arr(j);
        arr(j) = arr(j+1);
        arr(j+1) = temp;
      end
    end
  end

end
