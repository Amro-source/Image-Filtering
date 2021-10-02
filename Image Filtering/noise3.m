clc; clear all; close all;

A=imread('eight.tif');
% B=rgb2gray(A);
B=A;

black=3;
white=253;
%Adjust the values in 'black' and 'white' to increase the noise.

NoiseImg = B;
    Rmatrix = randint(size(B,1),size(B,2),[0,255]);
    NoiseImg(Rmatrix <= black) = 0;
    NoiseImg(Rmatrix >=white) = 255;
    RImg=medfilt2(NoiseImg);
    figure,subplot(1,2,1),imshow(NoiseImg),title('Add ''Salt and Pepper'' Noise');
    subplot(1,2,2),imshow(RImg),title('After Noise Removal');