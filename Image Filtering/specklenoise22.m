% MANUAL ADDITION OF SPECKLE NOISE% p3 = variance
 
clc; clear all; close all;



I = imread('Market.png');
J = rgb2gray(I);
p3= 0.05;
J = im2double(J);
b = J + sqrt(12*p3)*J.*(rand(size(J))-.5);
imshow(b)


% ADDING SPECKE NOISE AUTOMATICALLY
I = imread('Market.png');

J = rgb2gray(I);
K = imnoise(J,'speckle', 0.5);
figure, imshow(J), figure, imshow(K)