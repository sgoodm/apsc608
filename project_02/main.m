% seth goodman
% apsc 608 - spring 2018
% project 02

%{

Here is Project #2, due Tuesday 4/10.

Using your own photograph, apply wavelet methods to compress the size of the image while maintaining good quality.  
Your grade for this project will be based on your approach and discussion of your procedure and results.  
As always, neatness and good organization will also be evaluated.
%}

%{
References:

https://www.mathworks.com/help/wavelet/compression.html
https://www.mathworks.com/help/wavelet/examples/two-dimensional-true-compression.html
https://www.mathworks.com/help/wavelet/examples/data-compression-using-2d-wavelet-analysis.html

https://www.ltu.se/cms_fs/1.51590!/wavelet%20toolbox%204%20user's%20guide%20(larger%20selection).pdf
page 67 (3-26)
waveletAnalyzer

%}

clear;
close all;

input_path = 'input_image.jpg';
output_path = 'output_image.wtc';

[rX, map] = rgb2ind(imread(input_path),128);

colormap(pink(255))

% Select ROI (must be square, power of 2)
X = rX(1:1024,1:1024);  


[cratio, bpp] = wcompress('c', X, output_path, 'spiht', 'maxloop', 12);
Xc = wcompress('u' ,output_path);

image(X);  title('Original image'), axis square

figure()
image(Xc); title('Compressed image'), axis square





