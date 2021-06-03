function [J,face] = cropface(img)

% 绝对移动 FaceDetect = vision.CascadeObjectDetector; 
% 在循环外部。只需要创建一次面探测器对象。 为每个框架创建它显然是你的性能瓶颈。
FaceDetect = vision.CascadeObjectDetector('FrontalFaceCART','MinSize',[150,150]);
bbox=step(FaceDetect,img);
if ~isempty(bbox)
    for i=1:size(bbox,1)
    J=imcrop(img,bbox(i,:));
    end
    face = 1;
else
    J = img;
    face = 0;
end
end