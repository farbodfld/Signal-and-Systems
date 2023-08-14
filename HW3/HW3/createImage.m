%%%1
%alef
img1 = zeros(128,128,'uint8');
img1(1:2:end,1:2:end) = 255;
img1(2:2:end,2:2:end) = 255;
figure;imshow(img1);
%b
img2 = repmat(uint8(0:255), [256,1]);
figure;imshow(img2);
%c
img3 = randi([0,255],128,128,3,'uint8');
figure;imshow(img3);
%d
img4 = ones(256,256,3,'uint8')*255;
[X,Y,C] = meshgrid(1:256,1:256,1:3);
img4((abs(((X-30).^2+(Y-30).^2)-(10^2)) <= 25) & (C == 3)) = 0;
img4((((X-90).^2+(Y-90).^2) <= (5^2)) & ((C == 2) | (C == 3))) = 0;
img4(((X<=199) & (X>=180)) & ((Y == 180) | (Y == 199))) = 0;
img4(((Y<=199) & (Y>=180)) & ((X == 180) | (X == 199))) = 0;
figure;imshow(img4);
%e
img5 = ones(11,24);
img5(1:4,3) = 0;
img5(4,4:5) = 0;
img5(8:9,[5,10]) = 0;
img5(7:10,[6,9]) = 0;
img5([6:7,10:11],7:8) = 0;
img5(1:10,[13,16]) = 0;
img5(9:10,14:15) = 0;
img5(7:10,17:22) = 0;
img5([3,6,9],24) = 0;
img5([2,4],[19,21]) = 0;
img5(3,20) = 0;
img5 = repelem(img5,10,10);
figure;imshow(img5);