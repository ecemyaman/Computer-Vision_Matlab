%% 8 bitlik 3 bitli�e �evirme
resim=imread('C:\Users\ECEM\Desktop\matlab_code\BILGISAYAR GORMESI\G�r�nt�ler\windows.jpg');
resim1=resim./16;
figure,imshow(resim);
%colormap(gray(16));