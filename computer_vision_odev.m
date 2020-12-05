%% B�LG�SAYAR G�RMES� 3. HAFTA
I = imread ('kopek.jpg'); % dosya yolunu de�i�kenin i�erisine aktard�k.
figure(1), imshow(I); % g�r�nt� i�in pencere a�t�k ve  g�sterdik.
cropped_image = I(100:160, 160:220); % 100. sat�rdan 160. s�tuna, 160.sat�rdan 220. s�tu aras�n� k�rpt�k.
figure(2), imshow(cropped_image); % ekranda g�sterdik.
%% 
I=imread('kopek.jpg'); % dosyay� I de�i�kenine aktard�k
I1 = im2double(I); %  G�r�nt�n�n de�erini 0-1 aras�ndaki ondal�kl� say�lara �evrilir.
figure(3), imshow(I1); % ekranda g�sterdik
title('im2double'); % g�r�nt� �zerine double ba�l��� ekledik
I2 = double(I); % G�r�nt� de�erleri im2double, g�r�nt�n�n de�erleri tam say� �eklinde.
figure(4), imshow(I2); % ekranda g�sterdik
title('double'); % g�r�nt� �zerine double ba�l��� ekledik
%% B�LG�SAYAR G�RMES� 5. HAFTA
l1= imread ('zar.png'); % dosyay� okuduk ve de�i�kene aktard�k
figure(5),imshow(l1); %g�r�nt�y� ekranda g�sterdik
l2=rgb2hsv(l1); % g�r�nt�y� hsv renk uzay�na �evirdik
imtool(l2); % her bir pixelin bile�en de�erlerini ve koordinatlar�n� g�sterir.
l2=rgb2ycbcr(l1); % ycbcr renk uzay�na �evirdik
r = l1(:,:,1); % ana g�r�nt�n� r/k�rm�z� bile�enini ald�k
figure(6),imshow(r); % ekranda g�sterdik
g = l1(:,:,2); % ana g�r�nt�n�n g/ ye�il bile�enini ald�k
figure(7),imshow(g); % ekranda g�sterdik
b = l1(: ,: , 3); % g�r�nt�n�n b/ mavi bile�enini ald�k
figure(8),imshow(b); % ekranda g�sterdik
h=l2(:,:,1); % g�r�nt�n�n h bile�enini elde ettik
figure(9),imshow(h); % ekranda g�sterdik
s=l2(:,:,2); %g�r�nt�n�n h bile�enini elde ettik
figure(10),imshow(s); % ekranda g�sterdik
v=l2(:,:,3); %g�r�nt�n�n h bile�enini elde ettik
figure(11),imshow(v); % ekranda g�sterdik

%% B�LG�SAYAR G�RMES� 6. HAFTA
I=imread('top.png');
figure(12),imshow(I); % ekranda g�sterdik
I1=rgb2gray(I); %Renkli g�r�nt�y� greyscala g�r�nt�ye �evirdik. 0-255 de�erleri aras�nda
figure(13),imshow(I1);  % ekranda g�sterdik
%%
I3=rgb2gray(I); %gray scala g�r�nt�y� ald�k
figure(14),imshow(I); % ekranda g�sterdik
I_4bit = I3./16;  % noktasal b�lme yaparak g�r�nt�y� 16'ya b�ld�k 
figure(15),imshow(I_4bit);   %G�remiyoruz ��nk� pixel de�erleri d���k kal�yor. Matlab 0,255 alg�l�yor.
figure(16),imshow(I_4bit, []); %% D�ZEL�R
%%  
 I=imread('top.png'); % g�r�nt�y� ald�k
 r_channel = I(:,:,1); % g�r�nt�y� r kanal�na ay�rd�k. Manyetik spektrumun r k�sm�ndan elde edilen g�r�nt�ler.
 g_channel = I(:,:,2); % g�r�nt�y� g kanal�na ay�rd�k. Manyetik spektrumun g k�sm�ndan elde edilen g�r�nt�ler.
 b_channel= I(:,:,3);  % g�r�nt�y� b kanal�na ay�rd�k. Manyetik spektrumun b k�sm�ndan elde edilen g�r�nt�ler.
 rgb_image = cat(3,g_channel,b_channel,r_channel); %CAT  FONKS�YON �LE B�RLE�T�RME YAPILIR AMA SIRALAMA DO�RU OLMAK ZORUNDA 
figure(17),imshow(rgb_image); % ekranda g�sterdik.

 %% B�LG�SAYAR G�RMES� 8. HAFTA
 resim=imread('cicek.jpg'); %% g�rseli okuduk ve de�i�kene aktard�k
resim1=resim./16;  % G�R�NT�Y� 16 YA B�LD�K. 8 bitten 4 bite �evirdik.
figure(18),imshow(resim1); % ekrada g�r�nt�ledik
%colormap(gray(16));
I=imread('cicek.jpg'); % g�rseli okuduk ve de�i�kene aktard�k
[indexed,map]=rgb2ind(I,8); % ger�ek renk g�r�nt�y� indeksli g�r�nt�ye �evirip renk haritas�n� elde ediyoruz. 8 renk kulland�k
rgb2=ind2rgb(indexed,map); % indeksli g�r�nt�y� renkli g�r�nt�ye �evirdik
figure(19),imshow(I); % ekranda g�sterdik
figure(20),imshow(rgb2); % ekranda g�sterdik
%%
j=imread('cicek.jpg'); % g�rseli okuduk ve de�i�kene aktard�k.
figure(21),imshow(j); % ekranda g�sterdik.
j=rgb2gray(j);  % g�r�nt�y� gri g�r�nt�ye �evirdik
figure(22),imshow(j); % ekranda g�sterdik
colormap(summer); %gri g�r�nt�y� renk haritas�yla renkli g�r�nt�ye �evirdik
colorbar; % renk scalas�n� g�steren renk �ubu�unu belirtir.
%%
j = imread('cicek.jpg'); % g�r�nt�y� okuduk
k = j>55; % belirli bir e�ik de�eri �zerindeki de�eri de�i�kene aktard�k de�erleri 0-1 ile binarye �evirdik
imtool(k); % g�r�nt�n�n de�erlerine bakt�k
figure(23), imshow(k); % ekranda g�r�nt�ledik.
%%
I = imread('cicek.jpg'); % g�r�nt�y� okuduk
I = I+1; % g�r�nt� �zerindeki t�m piksel de�erlerini 1 ile toplad�k
j=im2double(I); % matematiksel i�lemlerde g�r�nt�ler double de�i�ken tipi al�r.
a=log(j); % logaritmas�n� ald�k
I=mat2gray(I); % g�r�nt�y�  0  ila 1 aral���ndaki gri renkli g�r�nt�ye d�n��t�r�r
figure(24),imshow(I); % ana g�r�nt�y� ekranda g�r�nt�ledik
figure(25),imshow(a,[]); % ��k�� g�r�nt�s�n� ekranda g�r�nt�ledik

%% B�LG�SAYAR G�RMES� 9. HAFTA
I=imread('kopek.jpg'); % g�r�nt�y� okuduk
g=gammaCorrect(I,3,1); % gama fonksiyonu olu�turduk
function [g] =gammaCorrect(f,gamma,c)
g=im2double(f); % giren g�r�nt�y� double a �evirdik.
g=g.^gamma; % g�r�nt�n�n her bir eleman�n� gamaya g�re �ss�n� ald�k
g=g*c; %sabitle �arpt�k
figure(26), imshow(g); % ekranda g�sterdik
end