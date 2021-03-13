offset =1;
for a_iter=1:322  
I =imread(sprintf('mdb (%d).pgm',offset));
imshow(I)
h = imrect(gca,[10 10 600 600]);
addNewPositionCallback(h,@(p) title(mat2str(p,3)));
fcn = makeConstrainToRectFcn('imrect',get(gca,'XLim'),get(gca,'YLim'));
setPositionConstraintFcn(h,fcn)
position = wait(h);
I2 = imcrop(I,position);
imshow(I2);
imwrite(I2,sprintf('BC (%d).TIF',offset));
offset=offset+1;
end