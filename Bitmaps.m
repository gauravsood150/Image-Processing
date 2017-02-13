%clc; clear all;
a= imread('lena.bmp');
[r,c]=size(a);
finalz=zeros(r,c);
varv=1;                           
for x=0:7 
    bitm=zeros(r,c);
    for i=1:r 
        for j=1:c 
           bitm(i,j)=bitand(a(i,j), varv);
           if bitm(i,j)>0
               bitm(i,j)=1;
               finalz(i,j)= finalz(i,j) + (bitm(i,j)*varv);
           end
        end
    end
    varv=varv*2;
    subplot(3,3,x+1);
    bitm=logical(bitm);
    imshow(bitm);
end
    subplot(3,3,9);
    imshow(finalz,[0,255]);
