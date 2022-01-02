clc
clear all
close all
%codegen sobel

%khyas = imread('khyas.jpg');
bakhshali = imread('MahdiBakhshali.jpeg');


% figure
% imshow(computer);
% figure
% imshow(mahdi);
% figure
% imshow(nature);


G6 = rgb2gray(bakhshali);


% Read the image
% img = imread('khyas_gray.jpg');
% % Create gray-level co-occurrence matrix from image
% glcms = graycomatrix(img);
% % Calculate properties of gray-level co-occurrence matrix
% stats = graycoprops(glcms);
% % Display energy values
% disp(['Energy = ', num2str(stats.Energy)]);


% img=imread('khyas.jpg');
% img=double(img(:));
% ima=max(img(:));
% imi=min(img(:));
% ims=std(img(:));
% snr=10*log((ima-imi)./ims);
% disp(['Noise = ' , num2str(snr)])


grayImage = rgb2gray(imread('MahdiBakhshali.jpeg'));

 % Frequency domain
 ft = fftshift(log(abs(fft2(grayImage))));
 imshow(ft, []);



% ft = fftshift(log(abs(fft2(bakhshali))));
% imshow(ft, []);
% 
% imshow(G6);

% figure
% imshowpair(G1 , computer , 'montage' );
% title('IUST Grey & RGB Form');
% figure
% imshowpair(G2 , mahdi , 'montage' );
% title('Mahdi Grey & RGB Form');
% figure
% imshowpair(G3 , nature , 'montage' );
% title('Nature Grey & RGB Form');





% edgeFB4 = sobel_mex(FB4, 0.7);
% Edge_FB4 = repmat(edgeFB4, [1 1 3]);
% figure
% imshowpair(FB4 , Edge_FB4 , 'montage');
% title('KHYAS Grey & Edge Detection');
% 
% 
% 
% edgeFB2 = sobel_mex(FB2, 0.7);
% Edge_FB2 = repmat(edgeFB2, [1 1 3]);
% figure
% imshowpair(FB2 , Edge_FB2 , 'montage');
% title('mahdi Grey & Edge Detection');
% 
% 
% edgeFB3 = sobel_mex(FB3, 0.7);
% Edge_FB3 = repmat(edgeFB3, [1 1 3]);
% figure
% imshowpair(FB3 , Edge_FB3 , 'montage');
% title('nature Grey & Edge Detection');

% edgeFB4 = sobel_mex(FB4, 0.7);
% Edge_FB4 = repmat(edgeFB4, [1 1 3]);
% figure
% imshowpair(FB4 , Edge_FB4 , 'montage');
% title('KHYAS Grey & Edge Detection');

% 
% BW1 = edge(FB1 ,'log');
% figure
% imshowpair(FB1 , BW1 , 'montage');
% title('computer Grey & Edge Detection log Method');
% 
% 
% BW2 = edge(FB2 ,'log');
% figure
% imshowpair(FB2 , BW2 , 'montage');
% title('mahdi Grey & Edge Detection log Method');
 

% BW4 = edge(FB4 ,'log');
% figure
% imshowpair(FB4 , BW4 , 'montage');
% title('KHYAS Grey & Edge Detection log Method');

% 
% BW3 = edge(FB3 ,'log');
% figure
% imshowpair(FB3 , BW3 , 'montage');
% title('nature Grey & Edge Detection log Method');

%here here
%Noise Adding and removal
% J1 = imnoise(G6 ,'gaussian',0,0.05);
% K1 = wiener2(J1 ,[5 5]);
% multi = cat(2 , G6 , J1 , K1);
% montage(multi);
% title('Portion of the Image without Noise & With Added Gaussian  Noise & Removed by Wiener Filter');
% 
% 
% J2 = imnoise(G2 ,'gaussian',0,0.05);
% K2 = wiener2(J2 ,[5 5]);
% multi = cat(2 , G2 , J2 , K2);
% montage(multi)
% title('Portion of the Image without Noise & With Added Gaussian  Noise & Removed by Wiener Filter');
% 
% 
% J3 = imnoise(G3 ,'gaussian',0,0.05);
% K3 = wiener2(J3 ,[5 5]);
% multi = cat(2 , G3 , J3 , K3);
% montage(multi)
% title('Portion of the Image without Noise & With Added Gaussian  Noise & Removed by Wiener Filter');


 
% WithoutNoise = imnoise(G5 ,'gaussian',0,0.05);
% K5 = wiener2(WithoutNoise ,[5 5]);
% multi = cat(2 , G5 , WithoutNoise , K5);
% montage(multi);
% title('KHYAS Image Noise 5*5');


% Salt & Pepper Noise
new1 = imnoise(G1 ,'salt & pepper',0.02);
% filter1 = wiener2(new1);
% multi = cat(2 , G1 , new1 , filter1);
% figure
% montage(multi)
% title('Without Noise & With Added Salt pepper & Removed by Wiener Filter');
% 
% 
 new2 = imnoise(G2 ,'salt & pepper',0.02);
% filter2 = wiener2(new2);
% multi = cat(2 , G2 , new2 , filter2);
% figure
% montage(multi)
% title('Without Noise & With Added Salt pepper & Removed by Wiener Filter');
% 
% 
 new3 = imnoise(G3 ,'salt & pepper',0.02);
% filter3 = wiener2(new3);
% multi = cat(2 , G3 , new3 , filter3);
% figure
% montage(multi)
% title('Without Noise & With Added Salt pepper & Removed by Wiener Filter');


% 
Kaverage1 = filter2(fspecial('average',1) , new1)/255;
%imshow(Kaverage1);
% multi = cat(2 , G1 , new1 , Kaverage1);
% montage(multi)


% Kmedian = medfilt2(new1);
% multi = cat(2 , G1 , new1 , Kmedian);
% montage(multi);
% title('Without Noise & With Kmedian & Removed by Kmedian Filter');


% Kmedian = medfilt2(new2);
% multi = cat(2 , G2 , new2 , Kmedian);
% montage(multi);
% title('Without Noise & With Kmedian & Removed by Kmedian Filter');


% Kmedian = medfilt2(new3);
% multi = cat(2 , G3 , new3 , Kmedian);
% montage(multi);
% title('Without Noise & With Kmedian & Removed by Kmedian Filter');

