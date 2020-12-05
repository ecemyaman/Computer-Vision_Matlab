clear all;
close all;
clc;
%%
I=imread('pout.tif'); % görüntüyü okuduk
I=im2double(I); %görüntüyü im2double a çevirdik
imhist(I); % histogram oluþturduk
figure(1),imshow(I); % ekrana yazdýrdýk

%%
lim=stretchlim(I,[0.01,0.99]); % görüntünün alt ve üst sýnýrlarýný belirler 
j=imadjust(I,lim,[]); % görüntünün kontrastýný ayarlar
figure(2),imshow(j); % ekranda gösterdik 
%%
I=imread('310(b).tif'); % görüntüyü okuduk
I=im2double(I);  %görüntüyü im2double a çevirdik
imhist(I);  %histogram oluþturduk
figure(3),imshow(I); % ekranda gösterdik
lim=stretchlim(I,[0.01,0.99]); % görüntünün alt ve üst sýnýrlarýný belirler 
j=imadjust(I,lim,[]); % görüntü rengini daha geniþ bir kontrast alana açmak için kullandýk
figure(4),imshow(j); %ekranda gösterdik

%% piece-wise 
I=imread('312(a).tif');  % görüntüyü okuduk
I=im2double(I); %görüntüyü im2double a çevirdik
imhist(I); %histogram oluþturduk
figure(5),imshow(I); %ekranda gösterdik
lim=stretchlim(I,[0.5,0.90]); % limitleri belirledik 
j=imadjust(I,lim,[]); % görüntünün kontrastýný ayarlar
figure(6),imshow(j); %ekranda gösterdik
%%
figure(7),imshow(I); %ekranda gösterdik
imcontrast; % kontrast ayarlama için kullanýlýr.
%%
I=imread('312(a).tif'); % görüntüyü okuduk
%j=I>150; % görüntü 150den büyük deðerler 1 oldu
j=I>130&I<200; % görüntü 130dan büyük 200den küçük deðerler için 1 yaptýk.
j=uint8(j); % binary görüntüyü tam sayý yaptýk.
j=j*255; % binary görüntüyü 255 ile çarptýk 
g=I+j; % ana görüntü ile son görüntüyü topladýk
figure(8),imshow(g); % ekranda gösterdik
%%
A=imread('314(a).tif');
B1=bitget(A,1); figure, imshow(logical(B1));title('Bit plane 1');
B2=bitget(A,2); figure, imshow(logical(B2));title('Bit plane 2');
B3=bitget(A,3); figure, imshow(logical(B3));title('Bit plane 3');
B4=bitget(A,4); figure, imshow(logical(B4));title('Bit plane 4');
B5=bitget(A,5); figure, imshow(logical(B5));title('Bit plane 5');
B6=bitget(A,6); figure, imshow(logical(B6));title('Bit plane 6');
B7=bitget(A,7); figure, imshow(logical(B7));title('Bit plane 7');
B8=bitget(A,8); figure, imshow(logical(B8));title('Bit plane 8');
%%
figure,
subplot(4,2,1);imshow(logical(B1));
subplot(4,2,2);imshow(logical(B2));
subplot(4,2,3);imshow(logical(B3));
subplot(4,2,4);imshow(logical(B4));
subplot(4,2,5);imshow(logical(B5));
subplot(4,2,6);imshow(logical(B6));
subplot(4,2,7);imshow(logical(B7));
subplot(4,2,8);imshow(logical(B8));
%%
A=imread('314(a).tif');
figure
for i=1:8
    B=bitget(A,i);
    subplot(4,2,i);imshow(logical(B));
end
