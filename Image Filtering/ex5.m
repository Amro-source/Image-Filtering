clc; clear all; close all;

% Create Various Filters and Filter an Image
% Read image and display it.


% I = imread('cameraman.tif');
% imshow(I);
% 
% 
% % Create a gaussian blur and use it to blur the image. Display the blurred image.
% % 
% H = fspecial('motion',20,45);
% MotionBlur = imfilter(I,H,'replicate');
% imshow(MotionBlur);


%%# Read an image
I = imread('peppers.png');
%# Create the gaussian filter with hsize = [5 5] and sigma = 2
G = gblur(I);
%# Display
imshow(G)