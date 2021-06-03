function  cropandsave(im,str)
j = 1;
% 对 ImageDatastore 标签中的文件进行计数
% T = countEachLabel(imds) 返回 imds 中的标签汇总表以及与每个标签关联的文件数。
% 实际上读的就是
T = countEachLabel(im);
n = T(1,2).Variables;
for i = 1:n
    i1 = readimage(im,i);
    % i1 图像数据数组
    % 181×158×3 uint8 数组
    % i1(:,:,1) =
    [img,face] = cropface(i1);
    if face==1
        % imwrite 将图像写入图形文件
        imwrite(img,['croppedfaces\', str,'\',int2str(j), '.jpg']);
        j = j+1;
    end
end
