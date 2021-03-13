function K = mcSegment(I)
%bottom hat filtering
se = strel('disk',20);
J = imsubtract(imadd(I,imtophat(I,se)),imbothat(I,se));
%figure
%imshow(I)
%figure
%imshow(J)
%imwrite(J,'TOP_hat.png')
%gamma correction
K = imadjust(J,[],[],10);
%figure
imshow(K)
%imwrite(K,'GIC.png')
end