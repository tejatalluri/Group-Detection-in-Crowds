cd 1shatian3
str='.jpg';
for ii=1:99
    
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

for cnt=5:6
rectangle('position',Ibox(:,cnt),'edgecolor','r');
end
hold on
for cnt=1:2
rectangle('position',Ibox(:,cnt),'edgecolor','y');
end
hold on
for cnt=27:30
rectangle('position',Ibox(:,cnt),'edgecolor','b');
end
hold on
for cnt=30:31
rectangle('position',Ibox(:,cnt),'edgecolor','g');
end

hold on
for cnt=33
rectangle('position',Ibox(:,cnt),'edgecolor','c');
end
hold on
for cnt=40:41
rectangle('position',Ibox(:,cnt),'edgecolor','m');
end
hold on

for cnt=40:50
rectangle('position',Ibox(:,cnt),'edgecolor','b');
end
hold on

for cnt=64:66
rectangle('position',Ibox(:,cnt),'edgecolor','y');
end
hold on
for cnt=82
    rectangle('position',Ibox(:,cnt),'edgecolor','r');
end
    hold on 
    for cnt=88:90
    rectangle('position',Ibox(:,cnt),'edgecolor','r');
    end
    hold on
    hold on 
    for cnt=95:97
    rectangle('position',Ibox(:,cnt),'edgecolor','r');
    end
    hold on
    for cnt=106
    rectangle('position',Ibox(:,cnt),'edgecolor','r');
    end
    hold on
    for cnt=112:114
    rectangle('position',Ibox(:,cnt),'edgecolor','r');
    end
    hold on
    for cnt=125
    rectangle('position',Ibox(:,cnt),'edgecolor','r');
    end
    
% hold off
end 
% figure(2);
HeatMap(lb);
% title('Heat Map');