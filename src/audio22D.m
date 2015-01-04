function [ output ] = audio22D( au )
% lindol

output = [];
col = floor(sqrt(length(au)));
for i = 1 : floor(length(au)/col)
    output = [output; au((i-1)*col+1:i*col)];
end

