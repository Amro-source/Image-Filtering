function f=gblur1(I,hsize,sigma)


G = fspecial('gaussian',[hsize hsize],sigma);
%# Filter it
Ig = imfilter(I,G,'same');

f=Ig;

end