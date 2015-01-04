function [ output_args ] = encoder( audio )
%ENCODER Summary of this function goes here
%   Detailed explanation goes here
%   Shen
two_D_audio = audio22D(audio);
[DC_array U sigma V] = DC(two_D_audio);
DC_cell = spiltDXD(DC_array, 4);
DC_cell_size = size(DC_cell);
DCT_cell = {};
for i = 1:DC_cell_size(1)
    row = {};
    for j = 1:DC_cell_size(2)
        tmp = dct2(DC_cell{i,j});
        row = [row,tmp];
    end
    DCT_cell = [DCT_cell;row];
end

[coefficients_pairs watermark] = watermarkGen();
DCT_embedded = embed(DCT_cell,coefficients_pairs,watermark);
DC_embedded = [];
DCT_size = size(DCT_embedded);
for i = 1:DCT_size(1)
    row = [];
    for j = 1:DCT_size(2)
        tmp = idct2(DCT_embedded{i,j});
        row = [row,tmp];
    end
    DC_embedded = [DC_embedded;row];
end

DC_size = size(DC_embedded);
for i = 1:DC_size(1)
    for j = 1:DC_size(2)
        sigma{i,j}(1,1) = DC_embedded(i,j);
    end
end

for i =1:


end

