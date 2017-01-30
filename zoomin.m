a=imread('clown.bmp');
[rows, cols]=size(a);
b=zeros(2*rows,2*cols);
for i=1:rows
    m=2*i-1;
    for j=1:cols
        n=2*j-1;
        b(m,n) =a(i,j);
        b(m+1,n)=a(i,j);
        b(m,n+1)=a(i,j);
        b(m+1,n+1)=a(i,j);
      
    end
end
imwrite(uint8(b),'clo.bmp')
