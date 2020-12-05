%% G�R�NT� �EV�RME VE AYIRMA
E=imread('kopek.jpg'); % g�r�nt�y� okuduk. 
figure(1),imshow(E); % ekranda g�r�nt�ledik 
title('ORJ�NAL G�R�NT�'); % g�r�nt�ye orjinal g�r�nt� isimli ba�l�k verildi
E1=rgb2gray(E); % g�r�nt�y� griye �evirdik 
figure(2),imshow(E1); % gri g�r�nt�y� ekranda g�sterdik
title('GR� G�R�NT�'); % gri g�r�nt�ye gri g�r�nt� isimli ba�l�k verildi.

figure 
for i=1:8
 E2=bitget(E1,i);
 subplot(4,2,i);
 imshow(logical(E2));
 title("G�R�NT�" +i);
end

%% G�R�NT� B�RLE�T�RME
figure 
for i=1:8
 E2=bitset(E1,i);
 imshow(E2);
 title(" B�RLE�T�R�LM�� G�R�NT�");
end
