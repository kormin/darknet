# Prediction
./darknet detect cfg/yolov3-tiny.cfg yolov3-tiny.weights data/basketball.jpg
./darknet detector demo cfg/coco.data cfg/yolov3.cfg yolov3.weights /home/tom/Videos/basketball-1.mp4 -dont_show -out_filename result.avi

# ./darknet detector test cfg/basketball.data cfg/basketball-yolov3-tiny.cfg yolov3-tiny.weights data/basketball.jpg
# ./darknet detector test cfg/basketball.data cfg/basketball-yolov3-tiny.cfg basketball-yolov3-tiny_last.weights data/basketball.jpg
./darknet detector test cfg/basketball.data cfg/basketball-yolov3-tiny.cfg basketball-yolov3-tiny_7000.weights data/basketball.jpg
# ./darknet detector test cfg/coco.data cfg/yolov3.cfg yolov3.weights data/basketball.jpg

# ./darknet detector train cfg/basketball.data cfg/basketball-yolov3-tiny.cfg yolov3-tiny.weights -dont_show

# How to train tiny-yolo (to detect your custom objects):
# 1) Download default weights file for yolov3-tiny: https://pjreddie.com/media/files/yolov3-tiny.weights
# 2) Get pre-trained weights:
./darknet partial cfg/yolov3-tiny.cfg yolov3-tiny.weights yolov3-tiny.conv.15 15
# 3) Start training:
./darknet detector train cfg/basketball.data cfg/basketball-yolov3-tiny.cfg yolov3-tiny.conv.15 -dont_show

# https://towardsdatascience.com/tutorial-build-an-object-detection-system-using-yolo-9a930513643a
