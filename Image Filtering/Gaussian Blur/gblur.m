function f=gblur(I)


G = fspecial('gaussian',[5 5],2);
%# Filter it
Ig = imfilter(I,G,'same');

f=Ig;

end