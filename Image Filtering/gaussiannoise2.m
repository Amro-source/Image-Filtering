% % Matlab’s Algorithm:

clc; clear all; close all;

% b = a + sqrt(p4)*randn(sizeA) + p3;
% ADDING GAUSSIAN NOISE INTO AN IMAGE USING IMNOISE
 
I = imread('Market.png');
J = rgb2gray(I);
K = imnoise(J,'gaussian', 0.05);
figure, imshow(J),
figure, imshow(K)


% MANUAL ADDITION OF GAUSSIAN NOISE
% p3 mean
 
% p4 variance
 
I = imread('Market.png');
J = rgb2gray(I);
p3= 0;
p4 = 0.05;
J = im2double(J);
b = J + sqrt(p4)*randn(size(J)) + p3;

imshow(b)