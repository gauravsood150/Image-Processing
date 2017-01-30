a=imread('boat.bmp');
[row,col]=size(a);
subplot(2,2,1);
imshow(a);
title('Original Image');

%horizontal flip
for i=1:row
    for j=1:col/2
        temp=a(i,j);
        a(i,j)=a(i,col-j);
        a(i,col-j)=temp;
    end
end
%imwrite(a,'boat_flip_horizontal.bmp');
subplot(2,2,2);
imshow(a);
title('Horizontal Image');

%vertical flip
b=imread('boat.bmp');

for i=1:row/2
    for j=1:col
        temp=b(i,j);
        b(i,j)=b(row-i,j);
        b(row-i,j)=temp;
    end
end
%imwrite(b,'boat_flip_vertical.bmp');
subplot(2,2,3);
imshow(b);
title('Vertical Image');

%negative Image
c=imread('boat.bmp');

for i=1:row
    for j=1:col
        c(i,j)=255-c(i,j);
    end
end
subplot(2,2,4);
imshow(c);
title('Negative Image');
