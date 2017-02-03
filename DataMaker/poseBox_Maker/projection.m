function imgn = projection(p1, p2, img, w, h)

img2 = zeros(h, w);
[h, w] = size(img2);

tform = maketform('projective',p1,p2);
T2 = calc_homography(p1,p2);   %���㵥Ӧ�Ծ���
T = maketform('projective',T2);   %ͶӰ����

imgn = imtransform(img, T,'size', size(img2), 'XData', [1, w], 'YData', [1, h]);     %ͶӰ
% figure;imshow(imgn);