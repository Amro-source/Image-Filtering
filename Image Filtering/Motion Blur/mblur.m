function f=mblur(I)


H = fspecial('motion',20,45);
MotionBlur = imfilter(I,H,'replicate');

f=MotionBlur;


end