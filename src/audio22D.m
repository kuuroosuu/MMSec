function [ output ] = audio22D( au )
% lindol

disp('audio22D Begin ...');

if(exist('src\cache\audio22D.mat','file'))
    load('src\cache\audio22D.mat');
    return;
end

output = [];
col = floor(sqrt(length(au)));
for i = 1 : floor(length(au)/col)
    output = [output; au((i-1)*col+1:i*col)];
end
save('src\cache\audio22D.mat','output');
disp('Done');

end
