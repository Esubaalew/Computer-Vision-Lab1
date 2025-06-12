

function index = binary_search(arr, target)
  %BINARY_SEARCH Performs binary search on a sorted array.
  %
  % Usage:
  %   index = binary_search(sorted_array, target_value)
  %
  % Arguments:
  %   arr    : A sorted array of numbers.
  %   target : The value to search for.
  %
  % Returns:
  %   index  : The 1-based index of the target in the array.
  %            Returns -1 if the target is not found.
  %
  % Example:
  %   data = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91];
  %   idx = binary_search(data, 23)
  %   % idx will be 6
  %   idx_not_found = binary_search(data, 15)
  %   % idx_not_found will be -1

  low = 1;
  high = length(arr);
  index = -1; 

  while low <= high
    mid = floor((low + high) / 2);
    if arr(mid) == target
      index = mid;
      return; 
    elseif arr(mid) < target
      low = mid + 1; 
    else
      high = mid - 1; 
    end
  end

end
