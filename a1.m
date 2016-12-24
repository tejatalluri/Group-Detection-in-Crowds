cd dawei1
str='.jpg';
for ii=1:100
    
    ff=strcat(num2str(ii),str);
 r=imread(ff);
 r=imresize(r,[256 256]);
cluster;
 bgray=rgb2gray(r);
bgray=medfilt2(bgray);
ibw=im2bw(bgray,0.3);
ibw=~ibw;
ifill=imfill(ibw,'holes');
%  figure,imshow(ifill)
[Ilabel num]=bwlabel(ifill);
Iprops=regionprops(Ilabel);
Ibox=[Iprops.BoundingBox];
Ibox=reshape(Ibox,[4 num]);
figure(1);
imshow(r);
hold on

for cnt=29:30
rectangle('position',Ibox(:,cnt),'edgecolor','r');
end
hold on
for cnt=41:45
rectangle('position',Ibox(:,cnt),'edgecolor','y');
end
hold on
for cnt=66
rectangle('position',Ibox(:,cnt),'edgecolor','b');
end
hold on
for cnt=30
rectangle('position',Ibox(:,cnt),'edgecolor','g');
end

hold on
for cnt=60
rectangle('position',Ibox(:,cnt),'edgecolor','c');
end

hold off
end 
% figure(2);
HeatMap(lb);
% title('Heat Map');
