I=imread('C:\Users\ECEM\Desktop\matlab_code\BILGISAYAR GORMESI\Görüntüler\windows.jpg');
%figure,imshow(I);
I1=rgb2gray(I);
figure,imshow(I1);  %Renkli görüntüyü greyscala görüntüye çevirdik.

%%
I3=rgb2gray(I);
%figure,imshow(I);
I_4bit = I3./16;
figure,imshow(I_4bit);   %Göremiyoruz çünkü pixel deðerleri düþük kalýyor. Matlab 0,255 algýlýyor.
figure,imshow(I_4bit, []); %% DÜZELÝR
%%  Görüntüyü kanallarýna ayýrýp birleþtirme
 I=imread('C:\Users\ECEM\Desktop\matlab_code\BILGISAYAR GORMESI\Görüntüler\windows.jpg');
 r_channel = I(:,:,1);
 g_channel = I(:,:,2);
 b_channel= I(:,:,3);  
 
 rgb_image = cat(3,g_channel,b_channel,r_channel); %CAT  FONKSÝYON ÝLE BÝRLEÞTÝRME YAPILIR AMA SIRALAMA DOÐRU OLMAK ZORUNDA !!!!
 figure,imshow(rgb_image);