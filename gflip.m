a=imread('boat.bmp');
[row,col]=size(a);
%horizontal flip
for i=1:row
    for j=1:col/2
        temp=a(i,j);
        a(i,j)=a(i,col-j);
        a(i,col-j)=temp;
    end
end
imwrite(a,'boat_flip_horizontal.bmp');

%vertical flip
b=imread('boat.bmp');

for i=1:row/2
    for j=1:col
        temp=b(i,j);
        b(i,j)=b(row-i,j);
        b(row-i,j)=temp;
    end
end
imwrite(b,'boat_flip_vertical.bmp');
