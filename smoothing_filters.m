I=imread('95(a).tif');
figure,imshow(I)
w=ones(5);
w=w/(5*5);
j=imfilter(I,w,'replicate');
figure,imshow(j)