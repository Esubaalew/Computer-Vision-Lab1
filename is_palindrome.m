

function result = is_palindrome(str)
  %IS_PALINDROME Checks if a given string is a palindrome.
  %
  % Usage:
  %   status = is_palindrome(input_string)
  %
  % Arguments:
  %   str : The input string.
  %
  % Returns:
  %   result : true if the string is a palindrome, false otherwise.
  %
  % Description:
  %   The function is case-insensitive and ignores non-alphanumeric
  %   characters (spaces, punctuation, etc.).
  %
  % Example:
  %   is_palindrome('racecar')          % returns true
  %   is_palindrome('A man, a plan, a canal: Panama') % returns true
  %   is_palindrome('hello')            % returns false

  
  
  
  processed_str = lower(str);
  processed_str = regexprep(processed_str, '[^a-z0-9]', '');

  
  reversed_str = fliplr(processed_str);
  
  result = strcmp(processed_str, reversed_str);

end
