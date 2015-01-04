<<<<<<< HEAD
cell = {};
a = [1;2];
for i = 0 : 5
    cell = [cell, a*2];
end
=======
clc
clear all
close all
addpath('src');
cell = {[1 2 3], [3 4 5];[7 8 9], [9 9 9];[8 8 8], [7 7 7]};
k = size(cell);
k(1)
cellk = {};
cellk = [cell, cell];
cellk = [cellk;];
cellk = [cellk];
DC_cell = cellk;
DC_cell_size = size(cellk);
DCT_cell = [];
for i = 1:DC_cell_size(1)
    row = [];
    for j = 1:DC_cell_size(2)
        tmp = DC_cell{i,j};
        row = [row,tmp];
    end
    DCT_cell = [DCT_cell;row];
end
DCT_cell;
DCT_cell(1,2) = 10000;
DCT_cell
>>>>>>> origin/master
