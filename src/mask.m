function [ num ] = mask( FourbyFour )
%MASK Summary of this function goes here
%   Detailed explanation goes here

edge = 0;
edge = edge + FourbyFour(4,1);
edge = edge + FourbyFour(3,2);
edge = edge + FourbyFour(4,2);
edge = edge + FourbyFour(3,3);
edge = edge + FourbyFour(4,3);
edge = edge + FourbyFour(2,4);
edge = edge + FourbyFour(3,4);
edge = edge + FourbyFour(4,4);
num = 0.125*edge+4;

end

