I=imread('338(a).tif');
w=fspecial ('gaussian' , [31 31], 5);
s = imfilter(I, w, 'replicate' );
mask=I-s;
g=I+mask;
figure,imshow(I); title('Orjinal Görüntü');
figure,imshow(s); title('Bulanýklaþmýþ Görüntü');
figure,imshow(mask); title('Filtre Görüntü');
figure,imshow(g,[]); title('Gaussian Görüntü');