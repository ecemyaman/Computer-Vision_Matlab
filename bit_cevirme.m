%% 8 bitlik 3 bitliðe çevirme
resim=imread('C:\Users\ECEM\Desktop\matlab_code\BILGISAYAR GORMESI\Görüntüler\windows.jpg');
resim1=resim./16;
figure,imshow(resim);
%colormap(gray(16));