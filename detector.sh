#!/bin/bash

# Download weights if not available.
if [ ! -f yolo.weights ]; then
    curl -O http://pjreddie.com/media/files/yolo.weights
fi

while read p; do
   ./darknet detector batch_test cfg/coco.data cfg/yolo.cfg yolo.weights $p  
done <$1

