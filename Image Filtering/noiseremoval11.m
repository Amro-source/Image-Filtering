% Read image and display it.


clc; clear all; close all;

I = imread('eight.tif');
imshow(I);


% % For this example, add noise to the image.

J = imnoise(I,'salt & pepper',0.02);
figure, imshow(J);


% % Filter the noisy image with an averaging filter and display the results.

K = filter2(fspecial('average',3),J)/255;
figure, imshow(K);


% % % Now use a median filter to filter the noisy image and display the results. 
% % % Notice that medfilt2 does a better job of removing noise, with less blurring of edges.

L = medfilt2(J,[3 3]);
figure, imshow(L);


% % Read in an image. Because the image is a truecolor image
% % , the example converts it to grayscale.


RGB = imread('saturn.png');
I = rgb2gray(RGB);


% % The example then add Gaussian noise to the image and then displays the image.
% % Because the image is quite large, the figure only shows a portion of the image.


J = imnoise(I,'gaussian',0,0.025);
imshow(J)

% % Remove the noise, using the wiener2 function. 
% % Again, the figure only shows a portion of the image


K = wiener2(J,[5 5]);
figure, imshow(K)


% % Portion of the Image with N




