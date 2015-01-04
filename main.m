clc
clear all
close all
addpath('src\');
[audio,Fs, pos, watermark] = encoder('music\A.mp3');
size(watermark,2)
decoder(audio,pos,watermark)
sound(audio,Fs);
clear sound;