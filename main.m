clc
clear all
close all
addpath('src\');
[audio,Fs, pos, watermark] = encoder('music\F.mp3');
sound(audio,Fs);