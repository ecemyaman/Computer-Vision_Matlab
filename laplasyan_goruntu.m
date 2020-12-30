%% NEGAT�F KATSAYILI
I=imread('338(a).tif');
w=fspecial ('laplacian',0);
w = [0 1 0;1 -4 1;0 1 0];
g= imfilter(I,w,'replicate');
g2=I-g;
figure,imshow(I); title('Orjinal G�r�nt�');
figure,imshow(g); title('Laplacian G�r�nt�');
figure,imshow(g2); title('Sharpened G�r�nt�');
figure,imshow(g,[]); title('�l�eklenmi� Laplacian G�r�nt�');

%% POZ�T�F KATSAYILI
I=imread('338(a).tif');
w=fspecial ('laplacian',0);
w = [0 -1 0;-1 4 -1;0 -1 0];
g= imfilter(I,w,'replicate');
g2=I+g;
figure,imshow(I); title('Orjinal G�r�nt�');
figure,imshow(g); title('Laplacian G�r�nt�');
figure,imshow(g2); title('Sharpened G�r�nt�');
figure,imshow(g,[]); title('�l�eklenmi� Laplacian G�r�nt�');