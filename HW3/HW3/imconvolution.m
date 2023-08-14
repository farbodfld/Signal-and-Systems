function [out] = imconvolution(im, filter, filterSize)
    out = zeros(size(im,1)-filterSize+1, 'uint8');
    for i=1:(size(im,1)-filterSize+1)
        for j=1:(size(im,2)-filterSize+1)
            out(i,j) = filter(im(i:(i+filterSize-1),j:(j+filterSize-1)));
        end
    end
end


I = imread('cameraman.tif');
avg_filter = @(im) mean(im, 'all');
med_filter = @(im) median(im, 'all');
gauss_filter3 = @(im) sum(double(im).*[1,2,1;2,4,2;1,2,1], 'all')/16;

figure;

avg3 = imconvolution(I,avg_filter,3);
subplot(3,3,1);imshow(avg3);title('Average 3×3');
avg5 = imconvolution(I,avg_filter,5);
subplot(3,3,2);imshow(avg5);title('Average 5×5');
avg7 = imconvolution(I,avg_filter,7);
subplot(3,3,3);imshow(avg7);title('Average 7×7');

med3 = imconvolution(I,med_filter,3);
subplot(3,3,4);imshow(med3);title('Median 3×3');
med5 = imconvolution(I,med_filter,5);
subplot(3,3,5);imshow(med5);title('Median 5×5');
med7 = imconvolution(I,med_filter,7);
subplot(3,3,6);imshow(med7);title('Median 7×7');

gauss3 = imconvolution(I,gauss_filter3,3);
subplot(3,3,8);imshow(gauss3);title('gaussian 3×3');
