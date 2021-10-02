clc; clear all; close all;

% A noise image (or value, vector, matrix, etc.) with that has values uniformly 
% distributed between 0 and 1 can be generated with the rand command.
% To generate a signal or  image that contains only, 
% Zero-mean white noise, the following statement can be used.
        
I = imread('eight.tif');


inputimage=I;

noiseimage = (rand(size(inputimage))-.5);

% where an image (signal) noiseimage is generated that is the same size as the variable inputimage. 
%   
 SNR=100;

% To command randn generates Gaussian noise with zero mean and unit variance.
% To generate an image (signal) that contains only, Zero-mean Gaussian noise, 
% the following statement can be used. 

        noiseimage = randn(size(inputimage)); 
  
 
% % 
% % To achieve a particular signal-to-noise ratio (SNR) you must determine the power in the variables inputimage and noiseimage. 
% % The first two lines of the following code calculate the power in inputimage and noiseimage respectively. 
% % The following lines generate another noise image (signal) with the SNR equal to the value of the variable SNR.

        Pinputimage=sum(sum(inputimage.^2));                                    % Power in inputimage
        Pnoiseimage=sum(sum((rand(size(noiseimage))-.5).^2));           % Power in noiseimage
        K = (Pinputimage/ Pnoiseimage);                                              % Ratio of noise powers
        noiseimage = sqrt(K/SNR)*(rand(size(inputimage))-.5);            % Generates a noisy image with a specific SNR
        
        
        imshow(noiseimage);
        
        
        
        
        
