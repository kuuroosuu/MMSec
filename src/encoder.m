function [ audio,Fs,coefficients_pairs, watermark] = encoder( filename )
%ENCODER Summary of this function goes here
%   Detailed explanation goes here
%   Shen
disp('Encoder Begin ...');
[audio,Fs] = audioread(filename);
two_D_audio = audio22D(audio);
[DC_array U sigma V] = DC(two_D_audio);
DC_cell = splitDxD(DC_array, 4);
DC_cell_size = size(DC_cell);
DCT_cell = {};
DC_cell
pause
for i = 1:DC_cell_size(1)
    row = {};
    for j = 1:DC_cell_size(2)
        tmp = dct2(DC_cell{i,j});
        row = [row,tmp];
    end
    DCT_cell = [DCT_cell;row];
end
DCT_cell
pause

[coefficients_pairs watermark] = watermarkGen(DC_cell_size(1));
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
forsize = size(sigma);
embedded2D = [];
for i =1:forsize(1)
    row = [];
    for j =1:forsize(2)
        tmp = S{i,j}*sigma{i,j}*V{i,j};
        row = [row tmp];
    end
    embedded2D = [embedded2D;row];
end

forsize = size(embedded2D);
% audio_embedded = [];
index = 1;
for i=1:forsize(1)
    for j =1:forsize(2)
%         audio_embedded = [audio_embedded,embedded2D(i,j) ];
        audio(index) = embedded2D(i,j);
        index = index+1;
    end   
end
disp('Done');

end

