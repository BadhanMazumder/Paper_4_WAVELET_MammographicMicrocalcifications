offset =1;
for a_iter=1:322  
k=imread(sprintf('BC (%d).TIF',offset));
    k1=imresize(k,[512,512]);
    imwrite(k1,sprintf('BC_resized (%d).TIF',offset));
    offset=offset+1;
end