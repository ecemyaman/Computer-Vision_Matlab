I=imread('C:\Users\ECEM\Desktop\matlab_code\BILGISAYAR GORMESI\G�r�nt�ler\windows.jpg');
%figure,imshow(I);
I1=rgb2gray(I);
figure,imshow(I1);  %Renkli g�r�nt�y� greyscala g�r�nt�ye �evirdik.

%%
I3=rgb2gray(I);
%figure,imshow(I);
I_4bit = I3./16;
figure,imshow(I_4bit);   %G�remiyoruz ��nk� pixel de�erleri d���k kal�yor. Matlab 0,255 alg�l�yor.
figure,imshow(I_4bit, []); %% D�ZEL�R
%%  G�r�nt�y� kanallar�na ay�r�p birle�tirme
 I=imread('C:\Users\ECEM\Desktop\matlab_code\BILGISAYAR GORMESI\G�r�nt�ler\windows.jpg');
 r_channel = I(:,:,1);
 g_channel = I(:,:,2);
 b_channel= I(:,:,3);  
 
 rgb_image = cat(3,g_channel,b_channel,r_channel); %CAT  FONKS�YON �LE B�RLE�T�RME YAPILIR AMA SIRALAMA DO�RU OLMAK ZORUNDA !!!!
 figure,imshow(rgb_image);