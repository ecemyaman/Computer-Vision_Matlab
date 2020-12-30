I=imread('338(a).tif');
w=fspecial ('gaussian' , [31 31], 5);
s = imfilter(I, w, 'replicate' );
mask=I-s;
g=I+mask;
figure,imshow(I); title('Orjinal G�r�nt�');
figure,imshow(s); title('Bulan�kla�m�� G�r�nt�');
figure,imshow(mask); title('Filtre G�r�nt�');
figure,imshow(g,[]); title('Gaussian G�r�nt�');