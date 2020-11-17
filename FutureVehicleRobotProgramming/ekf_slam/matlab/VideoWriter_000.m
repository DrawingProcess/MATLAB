writerObj = VideoWriter('../plots/ekf_slam_Error0.avi');
open(writerObj);
for k=1:330
    filename = sprintf('../plots/ekf_%03d.png',k);
    thisimage = imread(filename);
    writeVideo(writerObj, thisimage);
end
close(writerObj);