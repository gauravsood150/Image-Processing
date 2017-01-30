a=imread('clown.bmp');
[rows, cols]=size(a);
m=rows-32;
n=rows-32;
for i=1:rows
    for j=1:cols
        if(i<=32 || j<=32 || i>=m ||j>=n)
            a(i,j)=255;
        end
        
    end
end
imwrite((a),'c.bmp')
imshow(a)
