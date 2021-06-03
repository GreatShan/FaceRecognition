# Simple Face Recognition
Face recognition from training pretrained neural network alexnet and using cascade object detector for cropping faces.
Using capturefacesfromvideo.m to get training data from video and saving images of faces.
And using cropface.m to crop faces from images from training data.
And training Convolutional Neural Network alexnet by modifying output layesrs by number of subjects and using rmsprop optimizer.
Using trained newnet for face recognition.



通过训练预训练神经网络和使用级联目标检测器裁剪人脸进行人脸识别。
使用capturefacesfromvideo.m从视频中获取训练数据并保存人脸图像。
并使用cropface.m从训练数据中的图像中裁剪出人脸。
利用rmsprop优化器，按被试个数修改输出层，训练卷积神经网络。
利用训练好的newnet进行人脸识别。



Face recognition from training convolution neural network alexnet and using cascade object detector for cropping faces.

基于训练卷积神经网络和级联目标检测器的人脸识别。



cv21b.programming04 人脸识别练习

【任务描述】
将给定的人脸图像与gallery文件夹中的人脸图像进行比对，确认人脸图像身份（即对应gallery中哪张图像）。

【数据集】

- train：训练集，包含100个人（每个人对应一个文件夹，其中有多张人脸图像），用于训练人脸特征表示模型。
  注意： 训练集中的人并不在gallery中， 训练集中的数据仅可用于训练如何提取人脸特征（即利用同一个文件夹中的人脸图像属于同一个人、不同文件夹中的人脸图像不属于同一个人）。
- gallery：存档图像，包含50张人脸图像，图像文件名即身份ID。
- val： 验证集，2475张不明身份的人脸图像，用于本地测试（val_label.txt提供了标注）。
  评测方法：按照val_label.txt格式生成结果，保存为val_result.txt文件，运行eval.py文件。
- val_label.txt：验证集标注，每行一个图像；第一列对应val目录下的图像名；第二列为身份ID（即所对应的gallery中图像的文件名）。
- test： 测试集，2475张不明身份的人脸图像，用于实际测试（不提供标注）。

【提交内容】
采用模型对测试集中的所有人脸图像进行识别，提交zip格式，包括：

   - 结果文件命名为“学号.txt”，格式与val_label.txt相同
   - 汇报幻灯片，命名为“汇报人学号+姓名”
   - 小组构成：小组成员的学号和姓名（包括代码下载地址）

