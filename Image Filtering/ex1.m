

clc; clear all; close all;

% Create Various Filters and Filter an Image
% Read image and display it.


I = imread('cameraman.tif');
imshow(I);


% Create a motion filter and use it to blur the image. Display the blurred image.
% 
H = fspecial('motion',20,45);
MotionBlur = imfilter(I,H,'replicate');
imshow(MotionBlur);

