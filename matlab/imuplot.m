clc
clear

dat1=load('E:\workspace\soft\mtlabdata\ium-out\imu1.txt');
dat2=load('E:\workspace\soft\mtlabdata\ium-out\imu2.txt');

face1 = load('E:\workspace\soft\mtlabdata\face-look-time\1.txt');
face2 = load('E:\workspace\soft\mtlabdata\face-look-time\2.txt');

total = [dat2];



x=total(:,1);
y=total(:,2);
z=total(:,3);

figure(1)
subplot(311)
plot(x);
subplot(312)
plot(y);
subplot(313)
plot(z);

face = [face2];
figure(2)
ax=face(:,1);
ay=face(:,2);
az=face(:,3);
subplot(311)
plot(ax);
subplot(312)
plot(ay);
subplot(313)
plot(az);

figure(3)
gx=face(:,4);
gy=face(:,5);
gz=face(:,6);
subplot(311)
plot(gx);
subplot(312)
plot(gy);
subplot(313)
plot(gz);

figure(4)
plot(ax.^2+ay.^2+az.^2);