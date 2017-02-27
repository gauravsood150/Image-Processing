a = imread('pepper.bmp');
[row,col] = size(a);

b = uint8(zeros(row,col));
c = uint8(zeros(256,1));
d = uint8(zeros(256,1));
maxi=0;
mini=256;
subplot(2,2,1);
imshow(a);
title('Original Image');
for i= 1:row
    for j=1:col
        c(a(i,j)+1,1)= c(a(i,j)+1,1)+1;
        if(a(i,j)< mini)
            mini=a(i,j);
        end
        if(a(i,j)>maxi)
            maxi=a(i,j);
        end
    end
end
subplot(2,2,2)
bar([1:size(c,1)],c,256);
title('Histrogram of OI');

for i= 1:row
    for j=1:col
        b(i,j)=uint8( (a(i,j)-mini) * (255/(maxi-mini)) );
    end
end

subplot(2,2,3);
imshow(uint8(b));
title('Stretch Image');
for i= 1:row
    for j=1:col
        d(b(i,j)+1,1)= d(b(i,j)+1,1)+1;
    end
end

subplot(2,2,4)
bar([1:size(d,1)],d,256);
title('Histrogram of SI');

p=0;
for i=1:256,
       p=p+d(i,1);
end

pf=zeros(256,1);
for i=1:256,
    pf(i,1)=d(i,1)/p;
end

sm=0;
cf=zeros(256,1);
for i=1:256,
    cf(i,1)=pf(i,1)+sm;
    sm=cf(i,1);
    cf(i,1)=cf(i,1)*7;
end

    
