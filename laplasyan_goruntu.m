%% NEGATÝF KATSAYILI
I=imread('338(a).tif');
w=fspecial ('laplacian',0);
w = [0 1 0;1 -4 1;0 1 0];
g= imfilter(I,w,'replicate');
g2=I-g;
figure,imshow(I); title('Orjinal Görüntü');
figure,imshow(g); title('Laplacian Görüntü');
figure,imshow(g2); title('Sharpened Görüntü');
figure,imshow(g,[]); title('Ölçeklenmiþ Laplacian Görüntü');

%% POZÝTÝF KATSAYILI
I=imread('338(a).tif');
w=fspecial ('laplacian',0);
w = [0 -1 0;-1 4 -1;0 -1 0];
g= imfilter(I,w,'replicate');
g2=I+g;
figure,imshow(I); title('Orjinal Görüntü');
figure,imshow(g); title('Laplacian Görüntü');
figure,imshow(g2); title('Sharpened Görüntü');
figure,imshow(g,[]); title('Ölçeklenmiþ Laplacian Görüntü');