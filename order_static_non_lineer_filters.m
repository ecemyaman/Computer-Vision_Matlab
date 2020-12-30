I=imread('335(a).tif');
figure,imshow(I);
j = medfilt2(I,[3 3]);
imshowpair(I,j,'montage');