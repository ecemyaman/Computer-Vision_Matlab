%% BÝLGÝSAYAR GÖRMESÝ 3. HAFTA
I = imread ('kopek.jpg'); % dosya yolunu deðiþkenin içerisine aktardýk.
figure(1), imshow(I); % görüntü için pencere açtýk ve  gösterdik.
cropped_image = I(100:160, 160:220); % 100. satýrdan 160. sütuna, 160.satýrdan 220. sütu arasýný kýrptýk.
figure(2), imshow(cropped_image); % ekranda gösterdik.
%% 
I=imread('kopek.jpg'); % dosyayý I deðiþkenine aktardýk
I1 = im2double(I); %  Görüntünün deðerini 0-1 arasýndaki ondalýklý sayýlara çevrilir.
figure(3), imshow(I1); % ekranda gösterdik
title('im2double'); % görüntü üzerine double baþlýðý ekledik
I2 = double(I); % Görüntü deðerleri im2double, görüntünün deðerleri tam sayý þeklinde.
figure(4), imshow(I2); % ekranda gösterdik
title('double'); % görüntü üzerine double baþlýðý ekledik
%% BÝLGÝSAYAR GÖRMESÝ 5. HAFTA
l1= imread ('zar.png'); % dosyayý okuduk ve deðiþkene aktardýk
figure(5),imshow(l1); %görüntüyü ekranda gösterdik
l2=rgb2hsv(l1); % görüntüyü hsv renk uzayýna çevirdik
imtool(l2); % her bir pixelin bileþen deðerlerini ve koordinatlarýný gösterir.
l2=rgb2ycbcr(l1); % ycbcr renk uzayýna çevirdik
r = l1(:,:,1); % ana görüntünü r/kýrmýzý bileþenini aldýk
figure(6),imshow(r); % ekranda gösterdik
g = l1(:,:,2); % ana görüntünün g/ yeþil bileþenini aldýk
figure(7),imshow(g); % ekranda gösterdik
b = l1(: ,: , 3); % görüntünün b/ mavi bileþenini aldýk
figure(8),imshow(b); % ekranda gösterdik
h=l2(:,:,1); % görüntünün h bileþenini elde ettik
figure(9),imshow(h); % ekranda gösterdik
s=l2(:,:,2); %görüntünün h bileþenini elde ettik
figure(10),imshow(s); % ekranda gösterdik
v=l2(:,:,3); %görüntünün h bileþenini elde ettik
figure(11),imshow(v); % ekranda gösterdik

%% BÝLGÝSAYAR GÖRMESÝ 6. HAFTA
I=imread('top.png');
figure(12),imshow(I); % ekranda gösterdik
I1=rgb2gray(I); %Renkli görüntüyü greyscala görüntüye çevirdik. 0-255 deðerleri arasýnda
figure(13),imshow(I1);  % ekranda gösterdik
%%
I3=rgb2gray(I); %gray scala görüntüyü aldýk
figure(14),imshow(I); % ekranda gösterdik
I_4bit = I3./16;  % noktasal bölme yaparak görüntüyü 16'ya böldük 
figure(15),imshow(I_4bit);   %Göremiyoruz çünkü pixel deðerleri düþük kalýyor. Matlab 0,255 algýlýyor.
figure(16),imshow(I_4bit, []); %% DÜZELÝR
%%  
 I=imread('top.png'); % görüntüyü aldýk
 r_channel = I(:,:,1); % görüntüyü r kanalýna ayýrdýk. Manyetik spektrumun r kýsmýndan elde edilen görüntüler.
 g_channel = I(:,:,2); % görüntüyü g kanalýna ayýrdýk. Manyetik spektrumun g kýsmýndan elde edilen görüntüler.
 b_channel= I(:,:,3);  % görüntüyü b kanalýna ayýrdýk. Manyetik spektrumun b kýsmýndan elde edilen görüntüler.
 rgb_image = cat(3,g_channel,b_channel,r_channel); %CAT  FONKSÝYON ÝLE BÝRLEÞTÝRME YAPILIR AMA SIRALAMA DOÐRU OLMAK ZORUNDA 
figure(17),imshow(rgb_image); % ekranda gösterdik.

 %% BÝLGÝSAYAR GÖRMESÝ 8. HAFTA
 resim=imread('cicek.jpg'); %% görseli okuduk ve deðiþkene aktardýk
resim1=resim./16;  % GÖRÜNTÜYÜ 16 YA BÖLDÜK. 8 bitten 4 bite çevirdik.
figure(18),imshow(resim1); % ekrada görüntüledik
%colormap(gray(16));
I=imread('cicek.jpg'); % görseli okuduk ve deðiþkene aktardýk
[indexed,map]=rgb2ind(I,8); % gerçek renk görüntüyü indeksli görüntüye çevirip renk haritasýný elde ediyoruz. 8 renk kullandýk
rgb2=ind2rgb(indexed,map); % indeksli görüntüyü renkli görüntüye çevirdik
figure(19),imshow(I); % ekranda gösterdik
figure(20),imshow(rgb2); % ekranda gösterdik
%%
j=imread('cicek.jpg'); % görseli okuduk ve deðiþkene aktardýk.
figure(21),imshow(j); % ekranda gösterdik.
j=rgb2gray(j);  % görüntüyü gri görüntüye çevirdik
figure(22),imshow(j); % ekranda gösterdik
colormap(summer); %gri görüntüyü renk haritasýyla renkli görüntüye çevirdik
colorbar; % renk scalasýný gösteren renk çubuðunu belirtir.
%%
j = imread('cicek.jpg'); % görüntüyü okuduk
k = j>55; % belirli bir eþik deðeri üzerindeki deðeri deðiþkene aktardýk deðerleri 0-1 ile binarye çevirdik
imtool(k); % görüntünün deðerlerine baktýk
figure(23), imshow(k); % ekranda görüntüledik.
%%
I = imread('cicek.jpg'); % görüntüyü okuduk
I = I+1; % görüntü üzerindeki tüm piksel deðerlerini 1 ile topladýk
j=im2double(I); % matematiksel iþlemlerde görüntüler double deðiþken tipi alýr.
a=log(j); % logaritmasýný aldýk
I=mat2gray(I); % görüntüyü  0  ila 1 aralýðýndaki gri renkli görüntüye dönüþtürür
figure(24),imshow(I); % ana görüntüyü ekranda görüntüledik
figure(25),imshow(a,[]); % çýkýþ görüntüsünü ekranda görüntüledik

%% BÝLGÝSAYAR GÖRMESÝ 9. HAFTA
I=imread('kopek.jpg'); % görüntüyü okuduk
g=gammaCorrect(I,3,1); % gama fonksiyonu oluþturduk
function [g] =gammaCorrect(f,gamma,c)
g=im2double(f); % giren görüntüyü double a çevirdik.
g=g.^gamma; % görüntünün her bir elemanýný gamaya göre üssünü aldýk
g=g*c; %sabitle çarptýk
figure(26), imshow(g); % ekranda gösterdik
end