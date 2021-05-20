str = {'Madrid, Spain','Romeo and Juliet','MATLAB is great'};
capExpr = '[A-Z]';
spaceExpr = '\s';

capStartIndex = regexp(str,capExpr); % contains Uppercase positions for each cell
spaceStartIndex = regexp(str,spaceExpr); % contain space position

regexp('a b c ','\s'); % ans  2     4     6
%%
str = 'bat cat can car coat court CUT ct CAT-scan';
expression = 'c[aeiou]+t';
startIndex = regexp(str,expression)

The regular expression 'c[aeiou]+t' specifies this pattern:

% c must be the first character.
% c must be followed by one of the characters inside the brackets, [aeiou].
% The bracketed pattern must occur one or more times, as indicated by the + operator.
% t must be the last character, with no characters between the bracketed pattern 
% and the t.

%%

str = 'EXTRA! The regexp function helps you relax.';
expression = '\w*x\w*';
matchStr = regexp(str,expression,'match');

% The regular expression '\w*x\w*' specifies that the character vector:
% Begins with any number of alphanumeric or underscore characters, \w*.
% Contains the lowercase letter x.
% Ends with any number of alphanumeric or underscore characters after the x,
% including none, as indicated by \w*.