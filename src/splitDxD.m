function [ output ] = splitDxD( mat, D )
% lindol

row = floor(size(mat,1)/D);
col = floor(size(mat,2)/D);
output = cell(row,col);
for i = 1 : row
    for j = 1 : col
        output{i,j} = mat((i-1)*D+1:i*D, (j-1)*D+1:j*D);
    end
end

end

