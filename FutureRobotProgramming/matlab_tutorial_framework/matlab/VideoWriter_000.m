writerObj = VideoWriter('../plots/odom_000.avi');
open(writerObj);
for k=1:330
    filename = sprintf('../plots/odom_%03d.png',k);
    thisimage = imread(filename);
    writeVideo(writerObj, thisimage);
end
close(writerObj);