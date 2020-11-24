%%
I=imread('C:\Users\ECEM\Desktop\matlab_code\BILGISAYAR GORMESI\Görüntüler\windows.jpg');
I1 = im2double(I);
I2 = double(I);

%%
figure,imshow(I1);
title('im2double');
figure, imshow(I2);
title('double');

