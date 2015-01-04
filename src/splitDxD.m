function [ output ] = splitDxD( mat, D )
% lindol

output = cell(D,D);
row = floor(size(mat,1)/D);
col = floor(size(mat,2)/D);
for i = 1 : D
    for j = 1 : D
        output{i,j} = mat((i-1)*row+1:i*row, (j-1)*col+1:j*col);
    end
end

end

