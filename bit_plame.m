%% GÖRÜNTÜ ÇEVÝRME VE AYIRMA
E=imread('kopek.jpg'); % görüntüyü okuduk. 
figure(1),imshow(E); % ekranda görüntüledik 
title('ORJÝNAL GÖRÜNTÜ'); % görüntüye orjinal görüntü isimli baþlýk verildi
E1=rgb2gray(E); % görüntüyü griye çevirdik 
figure(2),imshow(E1); % gri görüntüyü ekranda gösterdik
title('GRÝ GÖRÜNTÜ'); % gri görüntüye gri görüntü isimli baþlýk verildi.

figure 
for i=1:8
 E2=bitget(E1,i);
 subplot(4,2,i);
 imshow(logical(E2));
 title("GÖRÜNTÜ" +i);
end

%% GÖRÜNTÜ BÝRLEÞTÝRME
figure 
for i=1:8
 E2=bitset(E1,i);
 imshow(E2);
 title(" BÝRLEÞTÝRÝLMÝÞ GÖRÜNTÜ");
end
