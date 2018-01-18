clear;
clc;

RGBimage = imread('image.jpg');
GrayscaleImage = rgb2gray(RGBimage);

RGBlogo = imread('logo.png');
GrayscaleLogo = rgb2gray(RGBlogo);
GrayscaleLogo = imresize(GrayscaleLogo, 0.2, 'bilinear');

[m,n] = size(GrayscaleLogo);
alpha = 0.8;

ResultImage = GrayscaleImage;
ResultImage(1:m,1:n) = uint8(alpha .* double(GrayscaleLogo) + (1-alpha) .* double(GrayscaleImage(1:m,1:n)));

figure;
imshow(ResultImage);