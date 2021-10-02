function f=mblur1(I,len,theta)


H = fspecial('motion',len,theta);
MotionBlur = imfilter(I,H,'replicate');

f=MotionBlur;


end