i=imread('lena.bmp');
[r,c]=size(i);
k=zeros(r/2,c/2);
for a=2:2:r
    for b=2:2:c
        if (i(a,b)>128)
            k(a/2,b/2)=1;
        %else b(m,n)=1;
        end
    end
end
imwrite(logical(k),'abc.bmp');
