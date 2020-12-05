clear all;
close all;
clc;
%%
I=imread('pout.tif'); % g�r�nt�y� okuduk
I=im2double(I); %g�r�nt�y� im2double a �evirdik
imhist(I); % histogram olu�turduk
figure(1),imshow(I); % ekrana yazd�rd�k

%%
lim=stretchlim(I,[0.01,0.99]); % g�r�nt�n�n alt ve �st s�n�rlar�n� belirler 
j=imadjust(I,lim,[]); % g�r�nt�n�n kontrast�n� ayarlar
figure(2),imshow(j); % ekranda g�sterdik 
%%
I=imread('310(b).tif'); % g�r�nt�y� okuduk
I=im2double(I);  %g�r�nt�y� im2double a �evirdik
imhist(I);  %histogram olu�turduk
figure(3),imshow(I); % ekranda g�sterdik
lim=stretchlim(I,[0.01,0.99]); % g�r�nt�n�n alt ve �st s�n�rlar�n� belirler 
j=imadjust(I,lim,[]); % g�r�nt� rengini daha geni� bir kontrast alana a�mak i�in kulland�k
figure(4),imshow(j); %ekranda g�sterdik

%% piece-wise 
I=imread('312(a).tif');  % g�r�nt�y� okuduk
I=im2double(I); %g�r�nt�y� im2double a �evirdik
imhist(I); %histogram olu�turduk
figure(5),imshow(I); %ekranda g�sterdik
lim=stretchlim(I,[0.5,0.90]); % limitleri belirledik 
j=imadjust(I,lim,[]); % g�r�nt�n�n kontrast�n� ayarlar
figure(6),imshow(j); %ekranda g�sterdik
%%
figure(7),imshow(I); %ekranda g�sterdik
imcontrast; % kontrast ayarlama i�in kullan�l�r.
%%
I=imread('312(a).tif'); % g�r�nt�y� okuduk
%j=I>150; % g�r�nt� 150den b�y�k de�erler 1 oldu
j=I>130&I<200; % g�r�nt� 130dan b�y�k 200den k���k de�erler i�in 1 yapt�k.
j=uint8(j); % binary g�r�nt�y� tam say� yapt�k.
j=j*255; % binary g�r�nt�y� 255 ile �arpt�k 
g=I+j; % ana g�r�nt� ile son g�r�nt�y� toplad�k
figure(8),imshow(g); % ekranda g�sterdik
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
