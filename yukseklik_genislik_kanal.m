%% GÖRÜNTÜ GENÝÞLÝK YÜKSEKLÝK KANAL
image=imread('C:\Users\ECEM\Desktop\matlab_code\BILGISAYAR GORMESI\Görüntüler\windows.jpg');
boyutlar=size(image);
yukseklik = boyutlar(1)
genislik = boyutlar(2)
kanal_sayisi=boyutlar(3),
[yukseklik, genislik, kanal_sayisi]=size(image);