function pause()

% Custom pause function to override the non-working pause function in Octave 5.1.0
% This call to the built-in input function will not print any prompt string and
% the argument 's' will tell Octave to not evaluate what the user typed in.
input('', 's');

end