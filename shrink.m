a=imread('clown.bmp');
[rows, cols]=size(a);
b=zeros(rows/2,cols/2);
for i=1:2:rows
    m=(i+1)/2;
    for j=1:2:cols
        n=(j+1)/2;
        b(m,n) =a(i,j);
    end
end
imwrite(uint8(b),'clow.bmp');
