function [ DCmat, U, Sigma, V ] = DC( au2D )
% lindol

disp('DC Begin ...');
auCell = splitDxD(au2D, 8);
DCmat = zeros(size(auCell));
U = cell(size(auCell));
Sigma = cell(size(auCell));
V = cell(size(auCell));
for i = 1 : size(auCell,1)
    for j = 1 : size(auCell,2)
        [u, sig, v] = svd(auCell{i,j});
        DCmat(i,j) = sig(1,1);
        U{i,j} = u;
        Sigma{i,j} = sig;
        V{i,j} = v;
    end
end
disp('Done');

end

