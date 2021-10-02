% Adding Poisson
%  Noise into an Image using ‘imnoise’
%  
I = imread('Market.png');
J = rgb2gray(I);
J = imnoise(J,'poisson')
 
% % Adding Poisson Noise Manually

 
 I = imread('Market.png');
a = rgb2gray(I);

a = im2double(a);
sizeA = size(a); 
a = a(:);

% Matrix in MxN forma = a(:);

b=zeros(size(a));
idx1=find(a<50);
% Matrix Positions whose pixels intensities are less than 50
t=ones(size(idx1));
% Matrix having all ones, the size is equal to idx size

em=-ones(size(idx1));

%Matrix having all -ones, the size is equal to idx size
idx2= (1:length(idx1))';

% Put values in idx2 equal to length of idx1

if (~isempty(idx1)) 
%     % if such pixels exists 
%     then
    g=exp(-a(idx1)); 
end   
    % take Exponential of the values at those pixel
% a = im2double(a);
% sizeA = size(a);

% Matrix Positions whose pixels intensities are less than 50t=ones(size(idx1));
% Matrix having all ones, the size is equal to idx sizeem=-ones(size(idx1));
%Matrix having all -ones, the size is equal to idx sizeidx2= (1:length(idx1))';
% Put values in idx2 equal to length of idx1if (~isempty(idx1))
% if such pixels exists theng=exp(-a(idx1)); 
% take Exponential of the values at those pixelpositions

while ~isempty(idx2)
    em(idx2)=em(idx2)+1;
    t(idx2)=t(idx2).*rand(size(idx2));
    idx2 = idx2(t(idx2) > g(idx2));
    endb(idx1)=em;
end


idx1=find(a>=50);

% Cases where pixel intensities are more than 49 unitsif 
if (~isempty(idx1))
    b(idx1)=round(a(idx1)+sqrt(a(idx1)).*randn(size(idx1)));
end
b = reshape(b,sizeA);
    imshow(b)

