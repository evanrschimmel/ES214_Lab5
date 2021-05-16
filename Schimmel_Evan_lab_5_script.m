clc
clear variables
close all

load('working_model_results');

Ma=1.0; %kg
Md=0.16; %kg
L=1.0; %m
R=0.133; %m
Ja=0.75; %kg-m^2
Jd=0.0014151; %kg-m^2
k=10.0; %N-m/rad

thetaAzero=0; %rad
thetadAzero=0; %rad/s
thetadDzero=0; %rad/s
rzero=0.2; %m

plot(t_WM,thetadotA_WM,t_WM,thetadotD_WM);
axis([0 0.414 -inf inf]);
xlabel('Time [s]');
ylabel('Angular velocity [rad/s]');
legend('Arm model','Disk model');