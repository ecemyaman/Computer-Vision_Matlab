%% 
I = imread('C:\Users\ECEM\Desktop\matlab_code\BILGISAYAR GORMESI\Görüntüler\karpuz.png');
[indexed,map] = rgb2ind(I,8);
rgb2=ind2rgb(indexed,map);
figure,imshow(I);
figure,imshow(rgb2);

%%
j = imread ('C:\Users\ECEM\Desktop\matlab_code\BILGISAYAR GORMESI\Görüntüler\karpuz.png');
figure, imshow(j);
colormap(map);
colorbar

%%
j= imread ('C:\Users\ECEM\Desktop\matlab_code\BILGISAYAR GORMESI\Görüntüler\karpuz.png');
rgb2 = ind2rgb(j, parula);
figure,imshow(rgb2);
colorbar

%%
I = imread('C:\Users\ECEM\Desktop\matlab_code\BILGISAYAR GORMESI\Görüntüler\karpuz.png');
imtool(I);
I(1,1);
figure, imshow();
%%
j = imread('C:\Users\ECEM\Desktop\matlab_code\BILGISAYAR GORMESI\Görüntüler\karpuz.png');
K = j>55;
imtool(I);
I(1,1);
figure, imshow(K);
%%
I = imread('C:\Users\ECEM\Desktop\matlab_code\BILGISAYAR GORMESI\Görüntüler\karpuz.png');
I = I+1;
j=im2double(I);
j=log(j);
I=mat2gray(I);
figure,imshow(I);
figure,imshow(j,[]);