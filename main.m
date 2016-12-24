
clc;
close all;
clear all;
disp('1.student003');
disp('2.1dawei1');
disp('3.1shatian3');
inn=input('Enter the input database number');
if inn==1
% assigning the name of sample avi file to a variable
% filename = '1.avi';
% 
% %reading a video file
% mov = VideoReader(filename);
% 
% % Defining Output folder as 'snaps'
% opFolder = fullfile(cd, 'snaps');
% %if  not existing 
% if ~exist(opFolder, 'dir')
% %make directory & execute as indicated in opfolder variable
% mkdir(opFolder);
% end
% 
% %getting no of frames
% numFrames = mov.NumberOfFrames;
% 
% %setting current status of number of frames written to zero
% numFramesWritten = 0;
% 
% %for loop to traverse & process from frame '1' to 'last' frames 
% for t = 1 :200
% currFrame = read(mov, t);    %reading individual frames
% opBaseFileName = sprintf('%d.jpg', t);
% opFullFileName = fullfile(opFolder, opBaseFileName);
% imwrite(currFrame, opFullFileName, 'jpg');   %saving as 'png' file
% %indicating the current progress of the file/frame written
% progIndication = sprintf('Wrote frame %4d of %d.', t, numFrames);
% disp(progIndication);
% numFramesWritten = numFramesWritten + 1;
% end      %end of 'for' loop
% progIndication = sprintf('Wrote %d frames to folder "%s"',numFramesWritten, opFolder);
% disp(progIndication);
cd snaps
str='.jpg';
for ii=1:200
    
    ff=strcat(num2str(ii),str);
 r=imread(ff);
 r=imresize(r,[256 256]);
cluster;
 bgray=rgb2gray(r);
bgray=medfilt2(bgray);
ibw=im2bw(bgray,0.3);
ibw=~ibw;
ifill=imfill(ibw,'holes');
[Ilabel num]=bwlabel(ifill);
Iprops=regionprops(Ilabel);
Ibox=[Iprops.BoundingBox];
Ibox=reshape(Ibox,[4 num]);
figure(1);
imshow(r);
hold on
regio;
end 
% figure(2);
HeatMap(lb);
else if inn==2
a1;
    else if inn==3
            
a2;
        end
    end
end

comparison;  

 


  