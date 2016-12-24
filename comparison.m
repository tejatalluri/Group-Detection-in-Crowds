NUMGRPa1=10;
NUMGRPa2=38;
student=22;
x=1;
y=2;
z=3;
figure(3);
hold on
AA=bar(x, student, 'FaceColor', 'b', 'EdgeColor', 'b'); 
hold on;
BB=bar(y, NUMGRPa1, 'FaceColor', 'r', 'EdgeColor', 'r');
hold on;
CC=bar(z, NUMGRPa2, 'FaceColor', 'c', 'EdgeColor', 'c');
legend('Student003','1dawei1','1shatian3');
xlabel('Frame');
ylabel('Number of groups');
axis([1 10 1 45])
grid on
colormap cool
