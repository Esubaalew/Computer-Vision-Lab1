

function stats = calculate_stats(data)
  %CALCULATE_STATS Calculates the mean, median, and mode of a dataset.
  %
  % Usage:
  %   s = calculate_stats(dataset)
  %
  % Arguments:
  %   data : A row or column vector of numbers.
  %
  % Returns:
  %   stats : A structure with fields 'mean', 'median', and 'mode'.
  %           The mode can be a vector if multiple modes exist.
  %
  % Example:
  %   dataset = [1, 2, 5, 2, 6, 5, 8, 5];
  %   s = calculate_stats(dataset)
  %   % s.mean will be 4.25
  %   % s.median will be 5
  %   % s.mode will be 5
  
  if isempty(data)
    error('Input data cannot be empty.');
  end

  
  mean_val = sum(data) / length(data);

  
  sorted_data = sort(data);
  n = length(sorted_data);
  mid = floor(n / 2);
  if rem(n, 2) == 1
    
    median_val = sorted_data(mid + 1);
  else
    
    median_val = (sorted_data(mid) + sorted_data(mid + 1)) / 2;
  end

  
  
  unique_elements = unique(data);
  counts = histc(data(:), unique_elements);
  
  max_count = max(counts);
  mode_val = unique_elements(counts == max_count);

  
  stats.mean = mean_val;
  stats.median = median_val;
  stats.mode = mode_val;

end
